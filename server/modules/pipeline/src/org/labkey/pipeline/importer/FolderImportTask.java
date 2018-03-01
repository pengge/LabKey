/*
 * Copyright (c) 2012-2016 LabKey Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.labkey.pipeline.importer;

import org.jetbrains.annotations.NotNull;
import org.labkey.api.admin.FolderImporterImpl;
import org.labkey.api.module.ModuleLoader;
import org.labkey.api.pipeline.*;
import org.labkey.api.util.FileType;
import org.labkey.api.view.HttpView;
import org.labkey.api.view.ViewContext;
import org.labkey.api.writer.VirtualFile;
import org.labkey.folder.xml.FolderDocument;

import java.util.*;

/*
* User: cnathe
* Date: Jan 19, 2012
*/
public class FolderImportTask extends PipelineJob.Task<FolderImportTask.Factory>
{
    private FolderImportTask(Factory factory, PipelineJob job)
    {
        super(factory, job);
    }

    @NotNull
    public RecordedActionSet run() throws PipelineJobException
    {
        PipelineJob job = getJob();
        FolderJobSupport support = job.getJobSupport(FolderJobSupport.class);

        try
        {
            VirtualFile vf = support.getRoot();

            // verify the archiveVersion
            FolderDocument.Folder folderXml = support.getImportContext().getXml();
            double currVersion = ModuleLoader.getInstance().getCoreModule().getVersion();
            if (folderXml.isSetArchiveVersion() && folderXml.getArchiveVersion() > currVersion)
                throw new PipelineJobException("Can't import folder archive. The archive version " + folderXml.getArchiveVersion() + " is newer than the server version " + currVersion + ".");

            FolderImporterImpl importer = new FolderImporterImpl(job);

            if(HttpView.hasCurrentView())
            {
                importer.process(job, support.getImportContext(), vf);
            }
            else
            {
                //Build a fake ViewContext so we can run trigger scripts
                try (ViewContext.StackResetter resetter = ViewContext.pushMockViewContext(job.getUser(),job.getContainer(),job.getActionURL()))
                {
                    importer.process(job, support.getImportContext(), vf);
                }
            }

            Collection<PipelineJobWarning> warnings = importer.postProcess(support.getImportContext(), vf);
            //TODO: capture warnings in the pipeline job and make a distinction between success & success with warnings
            //for now, just fail the job if there were any warnings. The warnings will
            //have already been written to the log
            if (!warnings.isEmpty())
                job.error("Warnings were generated by the folder importers!");

            // todo: if importing into multiple folders from a single template source folder then we dont want to delete the import directory until done with all the imports
            // mayb be best to just create a temporary, but real zip file and pass that around... but where to put the zip file itself?
            if (job.getErrors() == 0)
                job.getPipeRoot().deleteImportDirectory();
        }
        catch (CancelledException e)
        {
            throw e;
        }
        catch (PipelineJobException | DirectoryNotDeletedException e)
        {
            job.error(e.getMessage());
            job.info("Error StackTrace", e);
        }
        catch (Exception e)
        {
            throw new PipelineJobException(e);
        }

        return new RecordedActionSet();
    }


    public static class Factory extends AbstractTaskFactory<AbstractTaskFactorySettings, Factory>
    {
        public Factory()
        {
            super(FolderImportTask.class);
        }

        public PipelineJob.Task createTask(PipelineJob job)
        {
            return new FolderImportTask(this, job);
        }

        public List<FileType> getInputTypes()
        {
            return Collections.emptyList();
        }

        public List<String> getProtocolActionNames()
        {
            return Collections.emptyList();
        }

        public String getStatusName()
        {
            return "IMPORT FOLDER";
        }

        public boolean isJobComplete(PipelineJob job)
        {
            return false;
        }
    }
}

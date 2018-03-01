/*
 * Copyright (c) 2015-2016 LabKey Corporation
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
package org.labkey.wnprc_ehr.dataentry.Necropsy;

import org.labkey.api.ehr.dataentry.AnimalDetailsFormSection;
import org.labkey.api.ehr.dataentry.DataEntryFormContext;
import org.labkey.api.ehr.dataentry.FormSection;
import org.labkey.api.ehr.dataentry.TaskForm;
import org.labkey.api.ehr.dataentry.TaskFormSection;
import org.labkey.api.module.Module;
import org.labkey.api.view.template.ClientDependency;
import org.labkey.wnprc_ehr.WNPRCConstants;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.AlopeciaSection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.BodyConditionSection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.HistologySection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.MorphologicDiagnosisSection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.NecropsyInfoSection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.OrganWeightsSection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.TissueSamplesSection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.TreatmentsSection;
import org.labkey.wnprc_ehr.dataentry.Necropsy.FormSections.WeightSection;

import java.util.Arrays;

public class NecropsyForm extends TaskForm {
    public static final String NAME = "Necropsy";

    public NecropsyForm(DataEntryFormContext ctx, Module owner) {
        super(ctx, owner, NAME, NAME, WNPRCConstants.DataEntrySections.PATHOLOGY_CLINPATH, Arrays.asList(
                new TaskFormSection(),
                new NecropsyInfoSection(),
                new AnimalDetailsFormSection(),
                new WeightSection(),
                new TreatmentsSection(),
                new BodyConditionSection(),
                new AlopeciaSection(),
                new OrganWeightsSection(),
                new TissueSamplesSection(),
                new HistologySection(),
                new MorphologicDiagnosisSection()
        ));

        for(FormSection section: this.getFormSections()) {
            section.addConfigSource("Task");
            section.addConfigSource("Necropsy");
        }

        this.addClientDependency(ClientDependency.fromPath("wnprc_ehr/model/sources/Necropsy.js"));
    }
}

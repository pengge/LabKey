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
package org.labkey.wnprc_ehr.dataentry.BloodDrawRequest;

import org.labkey.api.ehr.dataentry.AnimalDetailsFormSection;
import org.labkey.api.ehr.dataentry.DataEntryFormContext;
import org.labkey.api.ehr.dataentry.FormSection;
import org.labkey.api.ehr.dataentry.TaskForm;
import org.labkey.api.ehr.dataentry.TaskFormSection;
import org.labkey.api.module.Module;
import org.labkey.api.view.template.ClientDependency;
import org.labkey.wnprc_ehr.WNPRCConstants;

import java.util.Arrays;

public class BloodDrawRequestForm extends TaskForm {
    public static final String NAME = "Blood Draw Request";

    public BloodDrawRequestForm(DataEntryFormContext ctx, Module owner) {
        super(ctx, owner, NAME, "Request Blood Draws", WNPRCConstants.DataEntrySections.COLONY_RECORDS, Arrays.asList(
                new TaskFormSection(),
                new AnimalDetailsFormSection()
        ));

        addClientDependency(ClientDependency.fromPath("wnprc_ehr/model/sources/Request.js"));
    }
}

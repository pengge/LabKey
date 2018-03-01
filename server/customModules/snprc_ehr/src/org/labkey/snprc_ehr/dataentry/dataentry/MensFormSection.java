/*
 * Copyright (c) 2016 LabKey Corporation
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
package org.labkey.snprc_ehr.dataentry.dataentry;

import org.labkey.api.view.template.ClientDependency;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by bimber on 10/8/2014.
 */
public class MensFormSection extends ClinicalObservationsFormSection
{
    public MensFormSection()
    {
        super();

        addClientDependency(ClientDependency.fromPath("snprc_ehr/window/AddFemaleAnimalsWindow.js"));
    }

    @Override
    public List<String> getTbarButtons()
    {
        List<String> defaultButtons = new ArrayList<>(super.getTbarButtons());

        int idx = defaultButtons.indexOf("ADDANIMALS");
        if (idx > -1)
        {
            defaultButtons.remove(idx);
            defaultButtons.add(idx, "ADD_FEMALE_ANIMALS");
        }

        return defaultButtons;
    }

}

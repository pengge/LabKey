/*
 * Copyright (c) 2016-2017 LabKey Corporation
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
package org.labkey.adjudication.security;

import org.labkey.adjudication.AdjudicationModule;
import org.labkey.api.security.permissions.ReadPermission;
import org.labkey.api.security.roles.AbstractModuleScopedRole;

public class AdjudicationDataReviewerRole extends AbstractModuleScopedRole
{
    public static final String DATA_REVIEWER_ROLE_NAME = "Adjudication Data Reviewer";

    public AdjudicationDataReviewerRole()
    {
        super(
            DATA_REVIEWER_ROLE_NAME,
            "Data Reviewers may review adjudication case details but can not upload data or make determinations and they do not receive notifications.",
            AdjudicationModule.class,
            AdjudicationReviewPermission.class, ReadPermission.class
        );
    }
}

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
package org.labkey.snprc_ehr.history;

import org.labkey.api.data.Container;
import org.labkey.api.data.Results;
import org.labkey.api.ehr.history.AbstractDataSource;
import org.labkey.api.module.Module;
import org.labkey.api.util.PageFlowUtil;

import java.sql.SQLException;
import java.util.Set;

/**
 * Created by Marty on 12/20/2016.
 */
public class DefaultCasesDataSource extends AbstractDataSource
{
    public DefaultCasesDataSource(Module module)
    {
        super("study", "cases", "Case Opened", "Clinical", module);
    }

    @Override
    protected String getHtml(Container c, Results rs, boolean redacted) throws SQLException
    {
        StringBuilder sb = new StringBuilder();

        addStringField(rs, sb, "caseid", "Admit Id");
        addStringField(rs, sb, "category", "Category");
        addStringField(rs, sb, "problem", "PDX");
        addStringField(rs, sb, "sdx", "SDX");
        addStringField(rs, sb, "admitcomplaint", "Admitting Complaint");
        addStringFieldLookup(rs, sb, "displayName", "assignedvet", "Assigned Vet");
        addDateField(c, rs, sb, "enddate", "Case Closed");

        return sb.toString();
    }

    @Override
    protected Set<String> getColumnNames()
    {
        return PageFlowUtil.set("Id", "date", "enddate", "category", "problem", "sdx", "admitcomplaint", "assignedvet/displayName");
    }
}

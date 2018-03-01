/*
 * Copyright (c) 2017 LabKey Corporation
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
package org.labkey.cnprc_ehr.table;

import org.labkey.api.data.AbstractTableInfo;
import org.labkey.api.data.TableInfo;
import org.labkey.api.data.WrappedColumn;
import org.labkey.api.ehr.table.DurationColumn;
import org.labkey.api.ldk.table.AbstractTableCustomizer;

public class CNPRC_FosteringCustomizer extends AbstractTableCustomizer
{
    @Override
    public void customize(TableInfo tableInfo)
    {
        addFosteredDuration(tableInfo);
    }

    private void addFosteredDuration(TableInfo ti)
    {
        String colName = "timeFostered";

        if (ti.getColumn(colName) == null)
        {
            WrappedColumn timeFostered = new WrappedColumn(ti.getColumn("date"), colName);
            timeFostered.setDisplayColumnFactory(colInfo -> new DurationColumn(colInfo, "date", "releaseDate", "yy:MM:dd"));
            timeFostered.setLabel("Time Fostered (yy:mm:dd)");

            ((AbstractTableInfo) ti).addColumn(timeFostered);
        }
    }
}
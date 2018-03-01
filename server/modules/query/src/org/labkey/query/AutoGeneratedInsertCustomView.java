/*
 * Copyright (c) 2012-2013 LabKey Corporation
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
package org.labkey.query;

import org.jetbrains.annotations.NotNull;
import org.labkey.api.data.ColumnInfo;
import org.labkey.api.data.TableInfo;
import org.labkey.api.query.FieldKey;

import java.util.ArrayList;
import java.util.List;

/**
 * Auto-generated based on columns that are set to be shownInInsertView.
 *
 * User: jeckels
 * Date: 11/21/12
 */
public class AutoGeneratedInsertCustomView extends AutoGeneratedCustomView
{
    public static final String NAME = "~~INSERT~~";

    public AutoGeneratedInsertCustomView(@NotNull QueryDefinitionImpl queryDef)
    {
        super(queryDef, NAME);
    }

    @Override
    protected List<FieldKey> getFieldKeysToShow(TableInfo table)
    {
        List<FieldKey> result = new ArrayList<>();
        for (ColumnInfo col : table.getUserEditableColumns())
        {
            if (col.isShownInInsertView())
            {
                result.add(col.getFieldKey());
            }
        }
        return result;
    }
}

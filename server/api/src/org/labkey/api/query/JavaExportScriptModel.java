/*
 * Copyright (c) 2015-2017 LabKey Corporation
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
package org.labkey.api.query;

import org.labkey.api.collections.CsvSet;
import org.labkey.api.data.CompareType;
import org.labkey.api.data.DisplayColumn;

import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

/*
* User: Dave
* Date: Apr 2, 2009
* Time: 12:44:51 PM
*/
public class JavaExportScriptModel extends ExportScriptModel
{
    public JavaExportScriptModel(QueryView view)
    {
        super(view);
    }

    public String getFilters()
    {
        List<String> filterExprs = getFilterExpressions();
        if (null == filterExprs || filterExprs.size() == 0)
            return "";
        
        StringBuilder ret = new StringBuilder();

        for (String filterExpr : filterExprs)
        {
            ret.append(filterExpr);
        }

        return ret.toString();
    }

    protected String makeFilterExpression(String name, CompareType operator, String value)
    {
        return "cmd.addFilter(" + quote(name) + ", " + quote(value) + ", Filter.Operator." + operator.name() + ");\n";
    }

    private String getListOfColumns()
    {
        StringBuilder ret = new StringBuilder();
        List<DisplayColumn> columns = getQueryView().getDisplayColumns();
        appendListOperator(ret, columns.size());

        String sep = "";

        for (DisplayColumn dc : getQueryView().getDisplayColumns())
        {
            if (dc.isQueryColumn())
            {
                ret.append(sep);
                ret.append(quote(dc.getColumnInfo().getName()));
                sep = ", ";
            }
        }

        ret.append(")");

        return ret.toString();
    }

    private StringBuilder getListOfSorts(String sortColumns)
    {
        StringBuilder sortParameters = new StringBuilder();
        Set<String> set = new CsvSet(sortColumns);
        appendListOperator(sortParameters, set.size());

        String sep = "";

        for (String sortColumn : set)
        {
            sortParameters.append(sep);
            sortParameters.append("new Sort(");

            if (sortColumn.startsWith("-"))
            {
                sortParameters.append(quote(sortColumn.substring(1)));
                sortParameters.append(", Sort.Direction.DESCENDING");
            }
            else
            {
                sortParameters.append(quote(sortColumn));
            }

            sortParameters.append(")");
            sep = ", ";
        }

        sortParameters.append(")");

        return sortParameters;
    }

    private void appendListOperator(StringBuilder sb, int size)
    {
        if (size > 1)
            sb.append("Arrays.asList(");
        else
            sb.append("Collections.singletonList(");
    }

    private String quote(String name)
    {
        return "\"" + name + "\"";
    }

    @Override
    public String getScriptExportText()
    {
        StringBuilder sb = new StringBuilder();

        sb.append("/*\n").append("    Java code generated by ").append(getInstallationName()).append(" on ").append(getCreatedOn()).append("\n\n");
        sb.append("    This code makes use of the LabKey Java Client API Library, which can be freely downloaded from http://www.labkey.com.\n\n");
        sb.append("    See https://www.labkey.org/wiki/home/Documentation/page.view?name=javaAPI for more information.").append("\n*/\n\n");

        sb.append("Connection cn = new Connection(").append(quote(getBaseUrl())).append(", \"<email>\", \"<password>\");").append("\n");
        sb.append("SelectRowsCommand cmd = new SelectRowsCommand(").append(quote(getSchemaName())).append(", ").append(quote(getQueryName())).append(");\n");
        sb.append("cmd.setRequiredVersion(9.1);\n");

        if (null != getViewName())
            sb.append("cmd.setViewName(").append(quote(getViewName())).append(");\n");

        // TODO: Inconsistent with R and SAS, which don't include view columns
        sb.append("cmd.setColumns(").append(getListOfColumns()).append(");\n");

        sb.append(getFilters());

        if (hasSort())
            sb.append("cmd.setSorts(").append(getListOfSorts(getSort())).append(");\n");

        if (hasContainerFilter())
            sb.append("cmd.setContainerFilter(ContainerFilter.").append(getContainerFilterTypeName()).append(");\n");

        if (hasQueryParameters())
        {
            sb.append("\nMap<String, String> parameters = new HashMap<>();\n");

            for (Entry<String, String> entry : getQueryParameters().entrySet())
            {
                sb.append("parameters.put(\"").append(entry.getKey()).append("\", \"").append(entry.getValue()).append("\");\n");
            }

            sb.append("cmd.setQueryParameters(parameters);\n");
        }

        sb.append("\nSelectRowsResponse response = cmd.execute(cn, ")
            .append(quote(getFolderPath())).append(");\n")
            .append("System.out.println(\"Number of rows: \" + response.getRowCount());\n\n")
            .append("for (Map<String, Object> row : response.getRows())\n")
            .append("{\n").append("    System.out.println(row);\n").append("}\n");

        return sb.toString();
    }
}

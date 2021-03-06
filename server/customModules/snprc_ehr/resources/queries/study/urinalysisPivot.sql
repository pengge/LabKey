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
SELECT
  b.Id,
  b.date,
  b.runId,
  b.panelName,
  b.TestName,
  MAX(b.result) as results

FROM urinalysisPivotInner b

GROUP BY b.runid,b.id, b.date, b.TestName, b.panelName

PIVOT results BY TestName IN
(select TestName from snprc_ehr.labwork_panels t
where t.includeInPanel = true AND t.ServiceId.Dataset='Urinalysis'
)
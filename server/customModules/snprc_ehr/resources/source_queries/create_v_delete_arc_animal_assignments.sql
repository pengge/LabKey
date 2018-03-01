/*
 * Copyright (c) 2015 LabKey Corporation
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
USE [animal]
GO

/****** Object:  View [labkey_etl].[v_delete_clinical_admissions]    Script Date: 6/26/2015 10:59:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [labkey_etl].[v_delete_arc_animal_assignments] AS
-- ==========================================================================================
-- Author:		Terry Hawkins
-- Create date: 8/14/2015
-- Description:	Selects the arc_animal_assignments for LabKey dataset for deletions
-- Note: 
--		
-- Changes:
--
-- ==========================================================================================


SELECT aaa.object_id AS objectid,
	   aaa.audit_date_tm AS audit_date_tm



FROM audit.audit_arc_animal_assignments AS aaa
-- select primates only from the TxBiomed colony
INNER JOIN Labkey_etl.V_DEMOGRAPHICS AS d ON d.id = aaa.id
WHERE aaa.audit_action = 'D' AND aaa.object_id IS NOT NULL


GO

grant SELECT on [labkey_etl].[v_delete_arc_animal_assignments] to z_labkey
GRANT SELECT ON [audit].[audit_arc_animal_assignments] TO z_labkey
go

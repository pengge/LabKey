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
USE [animal]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*==============================================================*/
/* View: V_DELETE_ATTRIBUTES                                         */
/*==============================================================*/
CREATE VIEW [labkey_etl].[V_DELETE_ATTRIBUTES] AS
-- ==========================================================================================
-- Author:		Terry Hawkins
-- Create date: 12/30/2015
-- Changes:
--
--
-- ==========================================================================================

SELECT 
	aa.object_id,
	aa.audit_date_tm
FROM audit.audit_attributes AS aa
-- select primates only from the TxBiomed colony
INNER JOIN Labkey_etl.V_DEMOGRAPHICS AS d ON d.id = aa.id
WHERE aa.audit_action = 'D' AND aa.object_id IS NOT NULL

GO

GRANT SELECT ON Labkey_etl.V_DELETE_ATTRIBUTES TO z_labkey 
GRANT SELECT ON audit.audit_attributes TO z_labkey

GO


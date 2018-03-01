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

CREATE PROCEDURE adjudication.handleUpgrade AS
    BEGIN
    IF NOT EXISTS(SELECT * FROM sys.schemas WHERE name = 'adjudicationtables')
        BEGIN
            execute('CREATE SCHEMA [adjudicationtables]');
        END
    END;

GO

EXEC adjudication.handleUpgrade
GO

DROP PROCEDURE adjudication.handleUpgrade
GO

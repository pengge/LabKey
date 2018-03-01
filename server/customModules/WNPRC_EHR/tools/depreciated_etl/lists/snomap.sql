/*
 * Copyright (c) 2010-2011 LabKey Corporation
 *
 * Licensed under the Apache License, Version 2.0: http://www.apache.org/licenses/LICENSE-2.0
 */
SELECT ocode, ncode, meaning, FixDate(date) AS date, ts, uuid AS objectid FROM snomap s
WHERE ts > ?
AND length(ocode) > 1

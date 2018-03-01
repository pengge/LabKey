/*
 * Copyright (c) 2012 LabKey Corporation
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
DROP TABLE sequenceanalysis.site_module_properties;
DROP TABLE sequenceanalysis.sbt_status;

ALTER TABLE sequenceanalysis.haplotype_sequences add column present boolean;
ALTER TABLE sequenceanalysis.haplotype_sequences drop ref_nt_id;
ALTER TABLE sequenceanalysis.haplotype_sequences add column lineage varchar(100);
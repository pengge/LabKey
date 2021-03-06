/*
 * Copyright (c) 2016-2017 LabKey Corporation
 *
 * Licensed under the Apache License, Version 2.0: http://www.apache.org/licenses/LICENSE-2.0
 */

SELECT
  gen.investigator,
  pro.protocol AS protocol,
  gen.species_code,
  gen."M::gentotal",
  gen."F::gentotal",
  gen."U::gentotal",
  age."Infant::ageTotal",
  age."Juvenile::ageTotal",
  age."Adult::ageTotal",
  age."Senior::ageTotal",
  ped."baboon1::grouptotal",
  ped."baboon2::grouptotal",
  ped."baboon3::grouptotal",
  gt.total

  FROM
   -- Gender --
   (SELECT
    protocol.inves AS investigator,
    Id.Demographics.gender AS gender,
    Id.Demographics.species.arc_species_code AS species_code,
    count(*) AS gentotal

     FROM assignment
     WHERE isActive = true AND Id.Demographics.gender IS NOT NULL AND Id.AgeClass.label IS NOT NULL AND protocol.inves IS NOT NULL
     GROUP BY protocol.inves, Id.Demographics.gender, Id.Demographics.species.arc_species_code
     PIVOT gentotal BY gender IN ('M', 'F', 'U')) gen

   INNER JOIN
   -- Age Class --
   (SELECT
    protocol.inves AS investigator,
    Id.AgeClass.label AS ageClass,
    Id.Demographics.species.arc_species_code AS species_code,
      count(*) AS agetotal

     FROM assignment
     WHERE isActive = true AND Id.Demographics.gender IS NOT NULL AND Id.AgeClass.label IS NOT NULL AND protocol.inves IS NOT NULL
     GROUP BY protocol.inves, Id.AgeClass.label, Id.Demographics.species.arc_species_code
     PIVOT agetotal BY ageClass IN ('Infant', 'Juvenile', 'Adult', 'Senior')) age
   ON gen.investigator = age.investigator AND gen.species_code = age.species_code

   INNER JOIN
    -- Pedigree --
    (SELECT
    protocol.inves AS investigator,
    demographicsCurrentPedigree.pedigree AS pedigree,
    a.Id.Demographics.species.arc_species_code AS species_code,
      count(*) AS grouptotal

     FROM study.assignment as a
     inner join study.demographicsCurrentPedigree on a.id = demographicsCurrentPedigree.id
     WHERE isActive = true AND a.Id.Demographics.gender IS NOT NULL AND a.Id.AgeClass.label IS NOT NULL AND protocol.inves IS NOT NULL
     GROUP BY protocol.inves, demographicsCurrentPedigree.pedigree, a.Id.Demographics.species.arc_species_code

     PIVOT grouptotal BY pedigree IN (SELECT name FROM snprc_ehr.pedigreeGroups))  ped
   ON gen.investigator = ped.investigator AND gen.species_code = ped.species_code

   INNER JOIN
   -- Total --
   (SELECT
    protocol.inves AS investigator,
      Id.Demographics.species.arc_species_code AS species_code,
      group_concat(DISTINCT protocol, ',') AS gtprotocol,
    count(*) AS total

     FROM assignment
     WHERE isActive = true AND Id.Demographics.gender IS NOT NULL AND Id.AgeClass.label IS NOT NULL AND protocol.inves IS NOT NULL
     GROUP BY protocol.inves, Id.Demographics.species.arc_species_code) gt
   ON gen.investigator = gt.investigator AND gen.species_code = gt.species_code

 LEFT OUTER JOIN

 -- protocol --
 (SELECT
      protocol.inves as investigator,
      Id.Demographics.species.arc_species_code as species_code,
   group_concat(DISTINCT protocol, ',') AS protocol,
   FROM assignment
   WHERE isActive = true
   GROUP BY protocol.inves, Id.Demographics.species.arc_species_code) pro
 ON gen.investigator = pro.investigator AND gen.species_code = pro.species_code

DELIMITER $$

ALTER ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_dashboarddata` AS 
SELECT
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`encounter` = 'yes')) AS `totalencounter`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`vaxxed` = 'yes')) AS `totalvaxxed`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`temp` > '38')) AS `totalfever`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`nationality` <> 'filipino')) AS `totalforeigner`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`nationality` = 'filipino')) AS `totalfilipino`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`age` >= 18)) AS `totaladult`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`age` < 18)) AS `totalminor`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`) AS `totalrecords`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`gender` = 'male')) AS `totalmale`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`gender` = 'female')) AS `totalfemale`,
  (SELECT
     COUNT(0)
   FROM `health_declaration`
   WHERE (`health_declaration`.`diagnosed` = 'yes')) AS `totaldiagnosed`$$

DELIMITER ;
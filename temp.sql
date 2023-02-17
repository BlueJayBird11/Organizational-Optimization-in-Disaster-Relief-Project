CREATE DEFINER=`root`@`localhost` TRIGGER `occur_AFTER_INSERT` AFTER INSERT ON `occur` FOR EACH ROW BEGIN
	-- 1: flood, 2: fire, 3: tornado
    
    declare incident int;
    set incident = (SELECT e.incidentCatagory
			FROM EVENT e
			WHERE new.eID = e.eID);
	IF (incident = 1) THEN
		UPDATE SECTOR s
        SET s.floodRisk = s.floodRisk + 1
        WHERE new.ZIP = s.ZIP;
    ELSEIF (incident = 2) THEN
		UPDATE SECTOR s
        SET s.fireRisk = s.fireRisk + 1
        WHERE new.ZIP = s.ZIP;
	ELSE 
		UPDATE SECTOR s
        SET s.tornadoRisk = s.tornadoRisk + 1
        WHERE new.ZIP = s.ZIP;
    END IF;
END
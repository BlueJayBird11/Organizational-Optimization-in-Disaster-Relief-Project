-- INSERT INTO SECTOR 
-- VALUES (70433, 1000, 0, 0, 0);

-- INSERT INTO EVENT VALUES(1, '111111', 1);

-- INSERT INTO Occur VALUES(1,70433);

-- Error Code: 1175. You are using safe update mode and you tried 
-- to update a table without a WHERE that uses a KEY column.  
-- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.



INSERT INTO SECTOR 
VALUES (70433, 1000, 0, 0, 0);

INSERT INTO EVENT VALUES(1, '111111', 1);
-- INSERT INTO EVENT VALUES(2, '111111', 2);
-- INSERT INTO EVENT VALUES(3, '111111', 3);

SELECT * FROM sector;

INSERT INTO Occur VALUES(1,70433);
-- INSERT INTO Occur VALUES(2,70433);
-- INSERT INTO Occur VALUES(3,70433);

SELECT * FROM sector;

DELETE FROM Occur WHERE ZIP = 70433 AND eID = 1;
DELETE FROM SECTOR WHERE ZIP = 70433;
DELETE FROM EVENT WHERE eID = 1;
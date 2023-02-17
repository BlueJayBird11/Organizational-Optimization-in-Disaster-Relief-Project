SELECT *
FROM LOCATION l;

SELECT *
FROM LOCATION l
WHERE l.specialty = 'burn center';

SELECT *
FROM classification c;

SELECT *
FROM classification c
WHERE c.funding > 10000.00;

SELECT m.mName
FROM MEMBER m
WHERE m.supervisor IS NULL;

SELECT m.mName
FROM MEMBER m
WHERE m.supervisor IS NOT NULL;

SELECT m.mName
FROM Ticket t, Classification c, MEMBER m
WHERE c.class = 'Non-Profit' AND t.mID = m.mID AND t.cID = c.cID;
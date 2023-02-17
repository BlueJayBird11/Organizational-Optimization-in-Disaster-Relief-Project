CREATE VIEW getTicket AS
SELECT t.mID, o.oID, c.cID, m.mName, o.oName, c.class, o.state, m.mAddress
FROM Ticket t, MEMBER m, ORGANIZATION o, CLASSIFICATION c
WHERE t.mID = m.mID AND t.oID = o.oID AND t.cID = c.cID;

CREATE VIEW getTicketMember AS
SELECT t.mID, t.oID, t.cID, m.mName
FROM Ticket t, MEMBER m
WHERE t.mID = m.mID;

SELECT * FROM getticket;

SELECT * FROM getticketmember; 
insert into ORGANIZATION 
values(1000,'Helping Hand Charity',1000,'LA','4042 Lakeway Avenue, 71111'),
(1001,'Bolshivik Group',3520,'LA','219 Donald Street, 71006'),
(1002,'National Guard',15000,'TX','1776 Shotgun Street, 77494'),
(1003,'Social Guarenteen Org.',100,'NY','5912 Big Apple Blvd, 10001');

insert into CLASSIFICATION  
values(1,'Charity',10000.00),
(2,'Non-Profit',332000.00),
(3,'Government',150000000.00),
(4,'Non-Profit',1800.00);

insert into MEMBER
values(2012543,'Jason Pruett', null,'4042 Lakeway Avenue, 71111'),
(2013132,'Craig Lashley','Jason Pruett','1992 Agon Road, 32353'),
(3014395,'Laura Lashley','Jason Pruett','1992 Agon Road, 32353'),
(4132242,'Mark Smith',null, '232 Left Hedge Fort');
    
insert into SECTOR
values(71111,30000,3,1,0),
(10001,1900000,5,0,2),
(10901,1000,0,0,18),
(77494,180000,0,10,2);
    
insert into EVENT 
values(319,'060823',1),
(320,'120823',3),
(123,'091223',2),
(132,'050922',2);

insert into LOCATION
values('Saint Peter Hospital','318 Country road, 71111', 'hospital', null),
('The Brenda Project','9532 YellowStone Street, 10001', 'food pantry', null),
('Saint John Hospital','123 Bulldog Blvd, 77494', 'hospital', 'Burn Center'),
('Storm House (Ward 4)','318 Country road, 10901', 'shelter', 'Storm Shelter');

    
    
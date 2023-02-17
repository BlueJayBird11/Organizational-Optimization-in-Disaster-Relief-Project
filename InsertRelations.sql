insert into PartOf values (2012543,1000), (3014395,1002), (2013132,1002),(4132242,1003);
insert into Has values (1,1000), (2, 1001), (3,1002), (4, 1003);
insert into Supervises values (2013132,2012543), (3014395,2012543);
insert into Ticket values (1,1000,2012543), (2, 1001,3014395), (3,1002,2013132),(4,1003,4132242);
insert into OperatesIn values (1000,71111,'LA'), (1002, 77494, 'TX'), (1003, 10001, 'NY');
insert into LocatedIn values ('Saint Peter Hospital',71111), ('The Brenda Project',10001), ('Storm House (Ward 4)', 10901), ('Saint John Hospital',77494);
insert into occur values(319,77494),(320,10901),(123,10001),(132,71111);
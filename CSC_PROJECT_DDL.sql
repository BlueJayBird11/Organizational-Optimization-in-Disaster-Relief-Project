drop database if exists Project;
create database Project; /* Replace <Studentdb> with the database name of your choice*/

use Project; /* Replace <Studentdb> with the database name of your choice*/

create table ORGANIZATION (
    oID int not null,
    oName varchar(255) not null,
    memberCount int not null,
    state char(2) not null,
    oAddress varchar(255) not null,
    primary key(oID)
); 

create table CLASSIFICATION ( 
	cID int not null, 
	class varchar(255) not null, 
    funding float(2) not null,
    primary key (cID)
);

create table MEMBER (
    mID int not null,
    mName varchar(255) not null,
    supervisor varchar(255),
    mAddress varchar(255) not null,
    primary key(mID)
); 

create table SECTOR (
    zip int not null,
    population int not null,
    floodRisk int not null,
    fireRisk int not null,
    tornadoRisk int not null,
    primary key(zip)
); 

create table EVENT (
	eID int not null, 
    incidentDate date not null, 
    incidentCatagory int not null, 
    primary key(eID)
); 

create table LOCATION (
    locName varchar(255) not null,
    locAddress varchar(255) not null,
    locType varchar(255) not null,
    specialty varchar(255),
    primary key(locName)
); 

CREATE TABLE PartOf (
  mID int,
  oID int,
  PRIMARY KEY(oID,mID),
  CONSTRAINT MEMBER_ID_CONSTRAINT
    FOREIGN KEY (mID)
    REFERENCES MEMBER(mID)
    ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT ORGANIZATION_ID_CONSTRAINT
    FOREIGN KEY (oID)
    REFERENCES ORGANIZATION(oID)
    ON DELETE CASCADE
	ON UPDATE CASCADE
    );

CREATE TABLE Supervises (
  supervisor int,
  supervisee int,
  PRIMARY KEY(supervisor,supervisee),
  CONSTRAINT SUPERVISOR_CONSTRAINT
    FOREIGN KEY (supervisor)
    REFERENCES MEMBER(mID)
    ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT SUPERVISEE_CONSTRAINT
    FOREIGN KEY (supervisee)
    REFERENCES MEMBER(mID)
    ON DELETE CASCADE
	ON UPDATE CASCADE
    );
    
CREATE TABLE OperatesIn (
  oID int,
  zip int,
  state char(2),
  PRIMARY KEY(oID,zip),
  CONSTRAINT OID_CONSTRAINT
    FOREIGN KEY (oID)
    REFERENCES ORGANIZATION (oID)
    ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT ZIP_CONSTRAINT
    FOREIGN KEY (zip)
    REFERENCES SECTOR(zip) 
    ON DELETE CASCADE
	ON UPDATE CASCADE
    );
    
CREATE TABLE LocatedIN (
  locName varchar(255),
  zip int,
  PRIMARY KEY(locName,zip),
  CONSTRAINT LOCNAME_CONSTRAINT
    FOREIGN KEY (locName)
    REFERENCES LOCATION (locName)
    ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT ZIP2_CONSTRAINT
    FOREIGN KEY (zip)
    REFERENCES SECTOR(zip) 
    ON DELETE CASCADE
	ON UPDATE CASCADE
    );
    
CREATE TABLE Has ( 
	cID int,
    oID int, 
    PRIMARY KEY(cID, oID),
    CONSTRAINT Has_cID_CONSTRAINT
		FOREIGN KEY (cID)
        REFERENCES CLASSIFICATION (cID)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT Has_oID_CONSTRAINT
		FOREIGN KEY (oID)
        REFERENCES ORGANIZATION (oID)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Ticket ( 
	cID int,
    oID int,
    mID int,
    PRIMARY KEY(cID, oID, mID),
    CONSTRAINT Ticket_cID_CONSTRAINT
		FOREIGN KEY (cID)
        REFERENCES CLASSIFICATION (cID)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT Ticket_oID_CONSTRAINT
		FOREIGN KEY (oID)
        REFERENCES ORGANIZATION (oID)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT Ticket_mID_CONSTRAINT
		FOREIGN KEY (mID)
        REFERENCES MEMBER (mID)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Occur (
  eID int,
  zip int,
  PRIMARY KEY(eID,zip),
  CONSTRAINT Occur_eID_CONSTRAINT
    FOREIGN KEY (eID)
    REFERENCES Event (eID)
    ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT Occur_zip_CONSTRAINT
    FOREIGN KEY (zip)
    REFERENCES SECTOR(zip)
    ON DELETE CASCADE
	ON UPDATE CASCADE
    );

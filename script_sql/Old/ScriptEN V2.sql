#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Enterprise
#------------------------------------------------------------

CREATE TABLE Enterprise(
        ID_enterprise                 Int  Auto_increment  NOT NULL ,
        Name_enterprise               Text NOT NULL ,
        Sector_of_activity_enterprise Text NOT NULL ,
        Number_interns_accepted       Text NOT NULL ,
        Booldel                       Bool NOT NULL
	,CONSTRAINT Enterprise_PK PRIMARY KEY (ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Location
#------------------------------------------------------------

CREATE TABLE Location(
        ID_location Int  Auto_increment  NOT NULL ,
        Location    Text NOT NULL ,
        Booldel     Bool NOT NULL
	,CONSTRAINT Location_PK PRIMARY KEY (ID_location)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Pilot_trust
#------------------------------------------------------------

CREATE TABLE Pilot_trust(
        ID_Pilot_trust Int  Auto_increment  NOT NULL ,
        Pilot_trust    Text NOT NULL ,
        Booldel        Bool NOT NULL ,
        ID_enterprise  Int NOT NULL
	,CONSTRAINT Pilot_trust_PK PRIMARY KEY (ID_Pilot_trust)

	,CONSTRAINT Pilot_trust_Enterprise_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Internship_offers
#------------------------------------------------------------

CREATE TABLE Internship_offers(
        ID_internship_offers Int  Auto_increment  NOT NULL ,
        Competense           Text NOT NULL ,
        Duree_de_stage       Text NOT NULL ,
        Base_remuneration    Text NOT NULL ,
        Date_offre           Date NOT NULL ,
        Nb_places_offertes   Int NOT NULL ,
        Boolsuppr            Bool NOT NULL
	,CONSTRAINT Internship_offers_PK PRIMARY KEY (ID_internship_offers)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Campus
#------------------------------------------------------------

CREATE TABLE Campus(
        ID_campus Int  Auto_increment  NOT NULL ,
        Campus    Text NOT NULL ,
        Booldel   Bool NOT NULL
	,CONSTRAINT Campus_PK PRIMARY KEY (ID_campus)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: People
#------------------------------------------------------------

CREATE TABLE People(
        ID_people  Int  Auto_increment  NOT NULL ,
        First_name Text NOT NULL ,
        Last_name  Text NOT NULL
	,CONSTRAINT People_PK PRIMARY KEY (ID_people)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Evaluation_interns
#------------------------------------------------------------

CREATE TABLE Evaluation_interns(
        ID_evaluation_interns Int  Auto_increment  NOT NULL ,
        Evaluation_interns    Text NOT NULL ,
        Booldel               Bool NOT NULL ,
        ID_enterprise         Int NOT NULL ,
        ID_people             Int NOT NULL
	,CONSTRAINT Evaluation_interns_PK PRIMARY KEY (ID_evaluation_interns)

	,CONSTRAINT Evaluation_interns_Enterprise_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
	,CONSTRAINT Evaluation_interns_People0_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Evaluation_interns_People_AK UNIQUE (ID_people)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Class
#------------------------------------------------------------

CREATE TABLE Class(
        ID_class Int  Auto_increment  NOT NULL ,
        Class    Text NOT NULL ,
        Booldel  Bool NOT NULL
	,CONSTRAINT Class_PK PRIMARY KEY (ID_class)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Permits
#------------------------------------------------------------

CREATE TABLE Permits(
        ID_permits   Int  Auto_increment  NOT NULL ,
        Code_permits Text NOT NULL
	,CONSTRAINT Permits_PK PRIMARY KEY (ID_permits)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: City
#------------------------------------------------------------

CREATE TABLE City(
        ID_City Int  Auto_increment  NOT NULL ,
        City    Text NOT NULL
	,CONSTRAINT City_PK PRIMARY KEY (ID_City)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Sector
#------------------------------------------------------------

CREATE TABLE Sector(
        ID_sector Int  Auto_increment  NOT NULL ,
        Sector    Text NOT NULL
	,CONSTRAINT Sector_PK PRIMARY KEY (ID_sector)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Role
#------------------------------------------------------------

CREATE TABLE Role(
        ID_role Int  Auto_increment  NOT NULL ,
        role    Text NOT NULL
	,CONSTRAINT Role_PK PRIMARY KEY (ID_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Being_located
#------------------------------------------------------------

CREATE TABLE Being_located(
        ID_location   Int NOT NULL ,
        ID_enterprise Int NOT NULL
	,CONSTRAINT Being_located_PK PRIMARY KEY (ID_location,ID_enterprise)

	,CONSTRAINT Being_located_Location_FK FOREIGN KEY (ID_location) REFERENCES Location(ID_location)
	,CONSTRAINT Being_located_Enterprise0_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Propose
#------------------------------------------------------------

CREATE TABLE Propose(
        ID_internship_offers Int NOT NULL ,
        ID_enterprise        Int NOT NULL
	,CONSTRAINT Propose_PK PRIMARY KEY (ID_internship_offers,ID_enterprise)

	,CONSTRAINT Propose_Internship_offers_FK FOREIGN KEY (ID_internship_offers) REFERENCES Internship_offers(ID_internship_offers)
	,CONSTRAINT Propose_Enterprise0_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Being_proposed
#------------------------------------------------------------

CREATE TABLE Being_proposed(
        ID_people            Int NOT NULL ,
        ID_internship_offers Int NOT NULL
	,CONSTRAINT Being_proposed_PK PRIMARY KEY (ID_people,ID_internship_offers)

	,CONSTRAINT Being_proposed_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Being_proposed_Internship_offers0_FK FOREIGN KEY (ID_internship_offers) REFERENCES Internship_offers(ID_internship_offers)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Belong
#------------------------------------------------------------

CREATE TABLE Belong(
        ID_people Int NOT NULL ,
        ID_class  Int NOT NULL
	,CONSTRAINT Belong_PK PRIMARY KEY (ID_people,ID_class)

	,CONSTRAINT Belong_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Belong_Class0_FK FOREIGN KEY (ID_class) REFERENCES Class(ID_class)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Represent
#------------------------------------------------------------

CREATE TABLE Represent(
        ID_people Int NOT NULL ,
        ID_class  Int NOT NULL
	,CONSTRAINT Represent_PK PRIMARY KEY (ID_people,ID_class)

	,CONSTRAINT Represent_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Represent_Class0_FK FOREIGN KEY (ID_class) REFERENCES Class(ID_class)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Own
#------------------------------------------------------------

CREATE TABLE Own(
        ID_permits Int NOT NULL ,
        ID_people  Int NOT NULL ,
        ID_role    Int NOT NULL
	,CONSTRAINT Own_PK PRIMARY KEY (ID_permits,ID_people,ID_role)

	,CONSTRAINT Own_Permits_FK FOREIGN KEY (ID_permits) REFERENCES Permits(ID_permits)
	,CONSTRAINT Own_People0_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Own_Role1_FK FOREIGN KEY (ID_role) REFERENCES Role(ID_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Working_in
#------------------------------------------------------------

CREATE TABLE Working_in(
        ID_people Int NOT NULL ,
        ID_campus Int NOT NULL
	,CONSTRAINT Working_in_PK PRIMARY KEY (ID_people,ID_campus)

	,CONSTRAINT Working_in_People_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
	,CONSTRAINT Working_in_Campus0_FK FOREIGN KEY (ID_campus) REFERENCES Campus(ID_campus)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Approve
#------------------------------------------------------------

CREATE TABLE Approve(
        ID_Pilot_trust Int NOT NULL ,
        ID_people      Int NOT NULL
	,CONSTRAINT Approve_PK PRIMARY KEY (ID_Pilot_trust,ID_people)

	,CONSTRAINT Approve_Pilot_trust_FK FOREIGN KEY (ID_Pilot_trust) REFERENCES Pilot_trust(ID_Pilot_trust)
	,CONSTRAINT Approve_People0_FK FOREIGN KEY (ID_people) REFERENCES People(ID_people)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Being_in
#------------------------------------------------------------

CREATE TABLE Being_in(
        ID_sector     Int NOT NULL ,
        ID_enterprise Int NOT NULL
	,CONSTRAINT Being_in_PK PRIMARY KEY (ID_sector,ID_enterprise)

	,CONSTRAINT Being_in_Sector_FK FOREIGN KEY (ID_sector) REFERENCES Sector(ID_sector)
	,CONSTRAINT Being_in_Enterprise0_FK FOREIGN KEY (ID_enterprise) REFERENCES Enterprise(ID_enterprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Locate
#------------------------------------------------------------

CREATE TABLE Locate(
        ID_campus   Int NOT NULL ,
        ID_City     Int NOT NULL ,
        ID_location Int NOT NULL
	,CONSTRAINT Locate_PK PRIMARY KEY (ID_campus,ID_City,ID_location)

	,CONSTRAINT Locate_Campus_FK FOREIGN KEY (ID_campus) REFERENCES Campus(ID_campus)
	,CONSTRAINT Locate_City0_FK FOREIGN KEY (ID_City) REFERENCES City(ID_City)
	,CONSTRAINT Locate_Location1_FK FOREIGN KEY (ID_location) REFERENCES Location(ID_location)
)ENGINE=InnoDB;


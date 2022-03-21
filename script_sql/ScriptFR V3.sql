#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Entreprise
#------------------------------------------------------------

CREATE TABLE Entreprise(
        ID_entreprise               Int  Auto_increment  NOT NULL ,
        Nom_entreprise              Text NOT NULL ,
        Secteur_activite_entreprise Text NOT NULL ,
        Nombre_stagiaires_acceptes  Text NOT NULL ,
        delegue                     Bool NOT NULL ,
        Boolsuppr                   Bool NOT NULL
	,CONSTRAINT Entreprise_PK PRIMARY KEY (ID_entreprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Site
#------------------------------------------------------------

CREATE TABLE Site(
        ID_site   Int  Auto_increment  NOT NULL ,
        Site      Text NOT NULL ,
        Boolsuppr Bool NOT NULL
	,CONSTRAINT Site_PK PRIMARY KEY (ID_site)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Confiance_pilote
#------------------------------------------------------------

CREATE TABLE Confiance_pilote(
        ID_confiance_pilote Int  Auto_increment  NOT NULL ,
        Confiance_pilote    Text NOT NULL ,
        Boolsuppr           Bool NOT NULL ,
        ID_entreprise       Int NOT NULL
	,CONSTRAINT Confiance_pilote_PK PRIMARY KEY (ID_confiance_pilote)

	,CONSTRAINT Confiance_pilote_Entreprise_FK FOREIGN KEY (ID_entreprise) REFERENCES Entreprise(ID_entreprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Offres_stage
#------------------------------------------------------------

CREATE TABLE Offres_stage(
        ID_offre_stage     Int  Auto_increment  NOT NULL ,
        Competense         Text NOT NULL ,
        Duree_de_stage     Text NOT NULL ,
        Base_remuneration  Text NOT NULL ,
        Date_offre         Date NOT NULL ,
        Nb_places_offertes Int NOT NULL ,
        Boolsuppr          Bool NOT NULL
	,CONSTRAINT Offres_stage_PK PRIMARY KEY (ID_offre_stage)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Centres
#------------------------------------------------------------

CREATE TABLE Centres(
        ID_centre Int  Auto_increment  NOT NULL ,
        Centre    Text NOT NULL ,
        Boolsuppr Bool NOT NULL
	,CONSTRAINT Centres_PK PRIMARY KEY (ID_centre)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Personnes
#------------------------------------------------------------

CREATE TABLE Personnes(
        ID_personnes Int  Auto_increment  NOT NULL ,
        Nom          Text NOT NULL ,
        Prenom       Text NOT NULL ,
        Mot_de_passe Text NOT NULL
	,CONSTRAINT Personnes_PK PRIMARY KEY (ID_personnes)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Evaluation_stagiaires
#------------------------------------------------------------

CREATE TABLE Evaluation_stagiaires(
        ID_evaluation_stagiaires Int  Auto_increment  NOT NULL ,
        Evaluation_stagiaires    Text NOT NULL ,
        Boolsuppr                Bool NOT NULL ,
        ID_entreprise            Int NOT NULL ,
        ID_personnes             Int NOT NULL
	,CONSTRAINT Evaluation_stagiaires_PK PRIMARY KEY (ID_evaluation_stagiaires)

	,CONSTRAINT Evaluation_stagiaires_Entreprise_FK FOREIGN KEY (ID_entreprise) REFERENCES Entreprise(ID_entreprise)
	,CONSTRAINT Evaluation_stagiaires_Personnes0_FK FOREIGN KEY (ID_personnes) REFERENCES Personnes(ID_personnes)
	,CONSTRAINT Evaluation_stagiaires_Personnes_AK UNIQUE (ID_personnes)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Promotions
#------------------------------------------------------------

CREATE TABLE Promotions(
        ID_promotion Int  Auto_increment  NOT NULL ,
        Promotion    Text NOT NULL ,
        Boolsuppr    Bool NOT NULL
	,CONSTRAINT Promotions_PK PRIMARY KEY (ID_promotion)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Permissions
#------------------------------------------------------------

CREATE TABLE Permissions(
        ID_permission   Int  Auto_increment  NOT NULL ,
        Code_permission Text NOT NULL
	,CONSTRAINT Permissions_PK PRIMARY KEY (ID_permission)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ville
#------------------------------------------------------------

CREATE TABLE Ville(
        ID_Ville Int  Auto_increment  NOT NULL ,
        Ville    Text NOT NULL
	,CONSTRAINT Ville_PK PRIMARY KEY (ID_Ville)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Secteur
#------------------------------------------------------------

CREATE TABLE Secteur(
        ID_secteur Int  Auto_increment  NOT NULL ,
        Secteur    Text NOT NULL
	,CONSTRAINT Secteur_PK PRIMARY KEY (ID_secteur)
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
# Table: Etre_localisee
#------------------------------------------------------------

CREATE TABLE Etre_localisee(
        ID_site       Int NOT NULL ,
        ID_entreprise Int NOT NULL
	,CONSTRAINT Etre_localisee_PK PRIMARY KEY (ID_site,ID_entreprise)

	,CONSTRAINT Etre_localisee_Site_FK FOREIGN KEY (ID_site) REFERENCES Site(ID_site)
	,CONSTRAINT Etre_localisee_Entreprise0_FK FOREIGN KEY (ID_entreprise) REFERENCES Entreprise(ID_entreprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Proposer
#------------------------------------------------------------

CREATE TABLE Proposer(
        ID_offre_stage Int NOT NULL ,
        ID_entreprise  Int NOT NULL
	,CONSTRAINT Proposer_PK PRIMARY KEY (ID_offre_stage,ID_entreprise)

	,CONSTRAINT Proposer_Offres_stage_FK FOREIGN KEY (ID_offre_stage) REFERENCES Offres_stage(ID_offre_stage)
	,CONSTRAINT Proposer_Entreprise0_FK FOREIGN KEY (ID_entreprise) REFERENCES Entreprise(ID_entreprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Etre_proposee
#------------------------------------------------------------

CREATE TABLE Etre_proposee(
        ID_personnes   Int NOT NULL ,
        ID_offre_stage Int NOT NULL
	,CONSTRAINT Etre_proposee_PK PRIMARY KEY (ID_personnes,ID_offre_stage)

	,CONSTRAINT Etre_proposee_Personnes_FK FOREIGN KEY (ID_personnes) REFERENCES Personnes(ID_personnes)
	,CONSTRAINT Etre_proposee_Offres_stage0_FK FOREIGN KEY (ID_offre_stage) REFERENCES Offres_stage(ID_offre_stage)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Appartenir
#------------------------------------------------------------

CREATE TABLE Appartenir(
        ID_personnes Int NOT NULL ,
        ID_promotion Int NOT NULL
	,CONSTRAINT Appartenir_PK PRIMARY KEY (ID_personnes,ID_promotion)

	,CONSTRAINT Appartenir_Personnes_FK FOREIGN KEY (ID_personnes) REFERENCES Personnes(ID_personnes)
	,CONSTRAINT Appartenir_Promotions0_FK FOREIGN KEY (ID_promotion) REFERENCES Promotions(ID_promotion)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Representer
#------------------------------------------------------------

CREATE TABLE Representer(
        ID_personnes Int NOT NULL ,
        ID_promotion Int NOT NULL
	,CONSTRAINT Representer_PK PRIMARY KEY (ID_personnes,ID_promotion)

	,CONSTRAINT Representer_Personnes_FK FOREIGN KEY (ID_personnes) REFERENCES Personnes(ID_personnes)
	,CONSTRAINT Representer_Promotions0_FK FOREIGN KEY (ID_promotion) REFERENCES Promotions(ID_promotion)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Posseder
#------------------------------------------------------------

CREATE TABLE Posseder(
        ID_permission Int NOT NULL ,
        ID_personnes  Int NOT NULL ,
        ID_role       Int NOT NULL
	,CONSTRAINT Posseder_PK PRIMARY KEY (ID_permission,ID_personnes,ID_role)

	,CONSTRAINT Posseder_Permissions_FK FOREIGN KEY (ID_permission) REFERENCES Permissions(ID_permission)
	,CONSTRAINT Posseder_Personnes0_FK FOREIGN KEY (ID_personnes) REFERENCES Personnes(ID_personnes)
	,CONSTRAINT Posseder_Role1_FK FOREIGN KEY (ID_role) REFERENCES Role(ID_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Travailler_dans
#------------------------------------------------------------

CREATE TABLE Travailler_dans(
        ID_personnes Int NOT NULL ,
        ID_centre    Int NOT NULL
	,CONSTRAINT Travailler_dans_PK PRIMARY KEY (ID_personnes,ID_centre)

	,CONSTRAINT Travailler_dans_Personnes_FK FOREIGN KEY (ID_personnes) REFERENCES Personnes(ID_personnes)
	,CONSTRAINT Travailler_dans_Centres0_FK FOREIGN KEY (ID_centre) REFERENCES Centres(ID_centre)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Approuver
#------------------------------------------------------------

CREATE TABLE Approuver(
        ID_confiance_pilote Int NOT NULL ,
        ID_personnes        Int NOT NULL
	,CONSTRAINT Approuver_PK PRIMARY KEY (ID_confiance_pilote,ID_personnes)

	,CONSTRAINT Approuver_Confiance_pilote_FK FOREIGN KEY (ID_confiance_pilote) REFERENCES Confiance_pilote(ID_confiance_pilote)
	,CONSTRAINT Approuver_Personnes0_FK FOREIGN KEY (ID_personnes) REFERENCES Personnes(ID_personnes)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Etre_dans
#------------------------------------------------------------

CREATE TABLE Etre_dans(
        ID_secteur    Int NOT NULL ,
        ID_entreprise Int NOT NULL
	,CONSTRAINT Etre_dans_PK PRIMARY KEY (ID_secteur,ID_entreprise)

	,CONSTRAINT Etre_dans_Secteur_FK FOREIGN KEY (ID_secteur) REFERENCES Secteur(ID_secteur)
	,CONSTRAINT Etre_dans_Entreprise0_FK FOREIGN KEY (ID_entreprise) REFERENCES Entreprise(ID_entreprise)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Se_situer
#------------------------------------------------------------

CREATE TABLE Se_situer(
        ID_centre Int NOT NULL ,
        ID_Ville  Int NOT NULL ,
        ID_site   Int NOT NULL
	,CONSTRAINT Se_situer_PK PRIMARY KEY (ID_centre,ID_Ville,ID_site)

	,CONSTRAINT Se_situer_Centres_FK FOREIGN KEY (ID_centre) REFERENCES Centres(ID_centre)
	,CONSTRAINT Se_situer_Ville0_FK FOREIGN KEY (ID_Ville) REFERENCES Ville(ID_Ville)
	,CONSTRAINT Se_situer_Site1_FK FOREIGN KEY (ID_site) REFERENCES Site(ID_site)
)ENGINE=InnoDB;


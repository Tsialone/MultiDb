-- Dropping tables with cascade constraint
DROP TABLE semestre CASCADE CONSTRAINT;
DROP TABLE etudiant CASCADE CONSTRAINT;
DROP TABLE matiere CASCADE CONSTRAINT;
DROP TABLE semestre_matiere CASCADE CONSTRAINT;
DROP TABLE note_etudiant CASCADE CONSTRAINT;
DROP TABLE option CASCADE CONSTRAINT;
DROP TABLE options_matieres CASCADE CONSTRAINT;
DROP TABLE semestre_etudiant CASCADE CONSTRAINT;
DROP TABLE OPTIONS CASCADE CONSTRAINT;
DROP TABLE note_etudiant_options CASCADE CONSTRAINT;



-- Creating tables
CREATE TABLE semestre (
    idSemestre VARCHAR(50) PRIMARY KEY NOT NULL
   
);

CREATE TABLE etudiant (
    idEtudiant VARCHAR(50) PRIMARY KEY,
    nom VARCHAR(50)
);


CREATE TABLE semestre_etudiant (
    idEtudiant VARCHAR(50),
    idSemestre VARCHAR(50),
    idPromotion VARCHAR(50),
    CONSTRAINT pk_promotion_semestre_etudiant PRIMARY KEY (idEtudiant, idSemestre, idPromotion),
    CONSTRAINT fk_idSemestre_etudiant FOREIGN KEY (idSemestre) REFERENCES semestre(idSemestre),
    CONSTRAINT unique_etudiant_semestre UNIQUE (idEtudiant, idSemestre) 
    -- CONSTRAINT fk_etudiant_semestre FOREIGN KEY (idEtudiant) REFERENCES etudiant(idEtudiant),
);
CREATE TABLE matiere (
    codeMatiere VARCHAR(50) PRIMARY KEY NOT NULL,
    nom VARCHAR(100) ,
    credit INT NOT NULL ,
    configuration VARCHAR(3) CHECK (configuration IN ('min', 'max' , 'avg' , 'sum'))
);

CREATE TABLE semestre_matiere (
    idSemestre VARCHAR(50),
    codeMatiere VARCHAR(50),
    CONSTRAINT pk_semestre_matiere PRIMARY KEY (idSemestre, codeMatiere),
    CONSTRAINT fk_semestre FOREIGN KEY (idSemestre) REFERENCES semestre(idSemestre),
    CONSTRAINT fk_matiere FOREIGN KEY (codeMatiere) REFERENCES matiere(codeMatiere)
);
CREATE TABLE note_etudiant (
    idEtudiant VARCHAR(50),
    codeMatiere VARCHAR(50),
    note NUMBER,
    CONSTRAINT fk_codeMatiere FOREIGN KEY (codeMatiere) REFERENCES matiere(codeMatiere)
    -- CONSTRAINT fk_idEtudiant FOREIGN KEY (idEtudiant) REFERENCES etudiant(idEtudiant)
);

-- Part 2: Creating option and option_matiere tables
CREATE TABLE options (
    idOption VARCHAR(50) PRIMARY KEY
);

CREATE TABLE options_matieres (
    idOption VARCHAR(50),
    codeMatiere VARCHAR(50),
    idSemestre VARCHAR(50),
    optionnel VARCHAR(5) CHECK (optionnel IN ('true', 'false')),  
    groupe VARCHAR(1) ,
    CONSTRAINT pk_options_matieres_semestre PRIMARY KEY (idOption , codeMatiere ),
    CONSTRAINT fk_option FOREIGN KEY (idOption) REFERENCES options(idOption),
    CONSTRAINT fk_option_matiere FOREIGN KEY (codeMatiere) REFERENCES matiere(codeMatiere),
    CONSTRAINT fk_option_semestre FOREIGN KEY (idSemestre) REFERENCES semestre(idSemestre)
);



CREATE TABLE ue (
    idOption VARCHAR(50),
    CodeMatiere  VARCHAR(50),
    groupe VARCHAR(1),
    CONSTRAINT ue_option_matiere PRIMARY KEY (idOption , codeMatiere  ),
    CONSTRAINT fk_ue_option FOREIGN KEY (idOption) REFERENCES options(idOption),
    CONSTRAINT fk_ue_matiere FOREIGN KEY (codeMatiere) REFERENCES matiere(codeMatiere)
);

--insertion semestre 
INSERT INTO SEMESTRE 
(IDSEMESTRE)
values
('S1');
INSERT INTO SEMESTRE 
(IDSEMESTRE)
values
('S2');
INSERT INTO SEMESTRE 
(IDSEMESTRE)
values
('S3');
INSERT INTO SEMESTRE 
(IDSEMESTRE)
values
('S4');
INSERT INTO SEMESTRE 
(IDSEMESTRE)
values
('S5');
INSERT INTO SEMESTRE 
(IDSEMESTRE)
values
('S6');

--insertion de 5 etudiants 
INSERT INTO etudiant (idEtudiant, nom) VALUES ('ETU000001', 'Jean Marie Francois');
INSERT INTO etudiant (idEtudiant, nom) VALUES ('ETU000002', 'Bob Martin');
INSERT INTO etudiant (idEtudiant, nom) VALUES ('ETU000003', 'Claire Bernard');
INSERT INTO etudiant (idEtudiant, nom) VALUES ('ETU000004', 'David Moreau');
INSERT INTO etudiant (idEtudiant, nom) VALUES ('ETU000005', 'Emma Lefevre');
--insertion d'etudiant dans semestre 
INSERT INTO SEMESTRE_ETUDIANT (IDETUDIANT ,  IDSEMESTRE  , IDPROMOTION) VALUES ('ETU000001' , 'S1' , 'P1');
INSERT INTO SEMESTRE_ETUDIANT (IDETUDIANT ,  IDSEMESTRE  , IDPROMOTION) VALUES ('ETU000001' , 'S6' , 'P1');
INSERT INTO SEMESTRE_ETUDIANT (IDETUDIANT ,  IDSEMESTRE  , IDPROMOTION) VALUES ('ETU000001' , 'S4' , 'P1');
INSERT INTO SEMESTRE_ETUDIANT (IDETUDIANT ,  IDSEMESTRE  , IDPROMOTION) VALUES ('ETU000002' , 'S1' , 'P1');
INSERT INTO SEMESTRE_ETUDIANT (IDETUDIANT ,  IDSEMESTRE  , IDPROMOTION) VALUES ('ETU000002' , 'S2' , 'P1');
INSERT INTO SEMESTRE_ETUDIANT (IDETUDIANT ,  IDSEMESTRE  , IDPROMOTION) VALUES ('ETU000002' , 'S4' , 'P1');
--semestre 1 
INSERT INTO matiere (codeMatiere, nom, credit , configuration) VALUES ('INF101', 'Programmation procédurale', 7  , 'sum');
INSERT INTO matiere (codeMatiere, nom, credit , configuration) VALUES ('INF104', 'HTML et Introduction au Web', 5  , NULL);
INSERT INTO matiere (codeMatiere, nom  , credit , configuration) VALUES ('INF107', 'Informatique de Base', 4  , 'avg');
INSERT INTO matiere (codeMatiere, nom  ,credit , configuration) VALUES ('MTH101', 'Arithmétique et nombres', 4  , NULL);
INSERT INTO matiere (codeMatiere, nom , credit ,configuration) VALUES ('MTH102', 'Analyse mathématique', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom ,credit ,configuration) VALUES ('ORG101', 'Techniques de communication', 4  , 'avg');
-- Associer les matières au semestre 1
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S1', 'INF101');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S1', 'INF104');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S1', 'INF107');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S1', 'MTH101');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S1', 'MTH102');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S1', 'ORG101');

--semestre 2
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('INF102', 'Bases de données relationnelles', 5, NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('INF103', 'Bases de l’administration système', 5, NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('INF105', 'Maintenance matériel et logiciel', 4, NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('INF106', 'Compléments de programmation', 6, NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('MTH103', 'Calcul Vectoriel et Matriciel', 6, NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('MTH105', 'Probabilité et Statistique', 4, NULL);

-- Associer les matières au semestre 2
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S2', 'INF102');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S2', 'INF103');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S2', 'INF105');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S2', 'INF106');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S2', 'MTH103');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S2', 'MTH105');
--semestre 3 
INSERT INTO matiere (codeMatiere, nom ,credit ,configuration) VALUES ('INF201', 'Programmation orientée objet', 6 , NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('INF202', 'Bases de données objets', 6 , NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('INF203', 'Programmation système', 4 , NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('INF208', 'Réseaux informatiques', 6 , NULL);
INSERT INTO matiere (codeMatiere, nom ,credit , configuration) VALUES ('MTH201', 'Méthodes numériques', 4 , NULL);
INSERT INTO matiere (codeMatiere, nom ,credit ,configuration) VALUES ('ORG201', 'Bases de gestion', 4 , NULL);
-- Associer les matières au semestre 3
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S3', 'INF201');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S3', 'INF202');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S3', 'INF203');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S3', 'INF208');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S3', 'MTH201');
INSERT INTO SEMESTRE_MATIERE (IDSEMESTRE, CODEMATIERE) VALUES ('S3', 'ORG201');
---- Exemples de notes générées pour l'étudiant 'ETU000001' en S1
--programmation procedural
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 5.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 3.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 1.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 6.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 7.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 5.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 4.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 2.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 7.20 );
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF101', 1.20 );
--html
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF104', 12.50);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF104', 2.50);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF104', 10.50);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF104', 6.50);

INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF107', 18.00);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'MTH101', 14.75);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'MTH102', 10.30);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'ORG101', 17.90);
-- Insertion des notes pour l'étudiant 'ETU000002' en semestre 'S1'
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'INF101', ROUND(DBMS_RANDOM.VALUE(0, 20), 2));
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'INF104', ROUND(DBMS_RANDOM.VALUE(0, 20), 2));
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'INF107', ROUND(DBMS_RANDOM.VALUE(0, 20), 2));
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'MTH101', ROUND(DBMS_RANDOM.VALUE(0, 20), 2));
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'MTH102', ROUND(DBMS_RANDOM.VALUE(0, 20), 2));
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'ORG101', ROUND(DBMS_RANDOM.VALUE(0, 20), 2));
-- Exemples de notes générées pour l'étudiant 'ETU000001' en S2
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF102', 16.75);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF103', 13.40);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF105', 18.25);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'INF106', 14.60);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'MTH103', 12.80);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000001', 'MTH105', 15.00);

-- Insertion des notes pour l'étudiant 'ETU000002' en semestre 'S2'
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'INF102', 14.20);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'INF103', 16.80);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'INF105', 12.50);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'INF106', 13.10);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'MTH103', 10.40);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000002', 'MTH105', 17.60);
COMMIT;

-- Notes générées pour l'étudiant 'ETU000003' en S1
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF101', 13.60);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF104', 18.00);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF107', 14.80);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'MTH101', 15.20);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'MTH102', 10.50);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'ORG101', 17.30);
-- Notes générées pour l'étudiant 'ETU000003' en S2
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF102', 11.40);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF103', 16.80);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF105', 14.00);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF106', 12.30);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'MTH103', 17.10);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'MTH105', 10.90);
-- Notes générées pour l'étudiant 'ETU000003' en S3
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF201', 16.50);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF202', 14.20);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF203', 13.90);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'INF208', 12.60);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'MTH201', 18.80);
INSERT INTO NOTE_ETUDIANT (IDETUDIANT, CODEMATIERE, NOTE) VALUES ('ETU000003', 'ORG201', 14.50);

--iza semestre zao? s1-s3
-- CREATE OR REPLACE VIEW  v_parcours_etudiants
-- AS
SELECT 
    sm.idSemestre,
    e.idEtudiant,
    e.nom AS NOM_ETUDIANT,
    m.nom AS matiere,
    m.CODEMATIERE,
    ne.note,
    m.credit,
    m.CONFIGURATION
FROM 
    etudiant e
JOIN 
    semestre_etudiant se ON e.idEtudiant = se.idEtudiant
JOIN 
    semestre_matiere sm ON sm.idSemestre = se.idSemestre
JOIN 
    matiere m ON sm.codeMatiere = m.codeMatiere
LEFT JOIN 
    note_etudiant ne ON e.idEtudiant = ne.idEtudiant AND m.codeMatiere = ne.codeMatiere 
WHERE sm.idSemestre IN ('S1', 'S2', 'S3')  order by m.CODEMATIERE;

SELECT DISTINCT(CODEMATIERE)  ,   MATIERE  ,CREDIT   FROM  V_PARCOURS_ETUDIANTS;







        
SELECT 
OPTIONS_MATIERES.IDOPTION,
OPTIONS_MATIERES.IDSEMESTRE,
MATIERE.CODEMATIERE,
MATIERE.NOM,
MATIERE.CREDIT,
OPTIONS_MATIERES.OPTIONNEL
FROM 
OPTIONS_MATIERES 
JOIN MATIERE ON   OPTIONS_MATIERES.CODEMATIERE = MATIERE.CODEMATIERE
WHERE IDOPTION = 'web et design' AND OPTIONS_MATIERES.OPTIONNEL = 'true';









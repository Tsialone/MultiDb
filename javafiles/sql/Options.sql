--insertion options
INSERT INTO OPTIONS (IDOPTION ) VALUES ('developpement');
INSERT INTO OPTIONS (IDOPTION ) VALUES ('bases de donnees et reseaux');
INSERT INTO OPTIONS (IDOPTION ) VALUES ('web et design');
--insertino des matieres s4-s6
--dev semestre 4
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF204', 'Système d’information géographique', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF205', 'Système d’information', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF206', 'Interface Homme/Machine', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF207', 'Eléments d’algorithmique', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF210', 'Mini-projet de développement', 10  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('MTH204', 'Géométrie', 4  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('MTH205', 'Equations différentielles', 4  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('MTH206', 'Optimisation', 4  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('MTH203', 'MAO', 4  , NULL);
--dev semestre 5
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF301', 'Architecture logicielle', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF304', 'Développement pour mobiles', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF307', 'Conception en modèle orienté objet', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('ORG301', 'Gestion d’entreprise', 5  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('ORG302', 'Gestion de projets', 4  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('ORG303', 'Anglais pour les affaires', 3  , NULL);
--dev semestre 6
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF310', 'Codage', 4  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF313', 'Programmation avancée, frameworks', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF302', 'Technologies d’accès aux réseaux', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF303', 'Multimédia', 6  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('INF316', 'Projet de développement', 10  , NULL);
INSERT INTO matiere (codeMatiere, nom, credit , CONFIGURATION) VALUES ('ORG304', 'Communication d’entreprise', 4  , NULL);
--BD semestre 4 
INSERT INTO MATIERE (CODEMATIERE, nom ,CREDIT  , CONFIGURATION) VALUES ('INF211' , 'Mini-projet de bases de données et/ou de réseaux', 10  , NULL);
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('MTH202','Analyse des données' , 4  , NULL);
--BD semestre 5
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('INF305','Gestion de domaines, clustering', 6  , NULL);
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('INF308' ,'Conception en modèle relationnel', 6  , NULL);
--BD semestre 6 
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('INF311', 'Datawarehouse et datamining', 4  , NULL);
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('INF314','Bases de données avancées' ,  6  , NULL);
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('INF317','Projet de Bases de données et/ou de réseaux' ,10  , NULL);
--WEB DESIGN semestre 4
INSERT INTO MATIERE (CODEMATIERE,nom ,CREDIT , CONFIGURATION) VALUES ('INF209','Web dynamique',  6  , NULL);
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('INF212','Mini-projet de Web et design' ,10  , NULL);
--web semestre 5
INSERT INTO MATIERE (CODEMATIERE,nom, CREDIT , CONFIGURATION) VALUES ('INF306','Introduction au cloud' ,  6  , NULL);
INSERT INTO MATIERE (CODEMATIERE, nom,CREDIT , CONFIGURATION) VALUES ('INF309','Web avancé' , 6  , NULL);
--web semestre 6 
INSERT INTO MATIERE (CODEMATIERE, nom, CREDIT , CONFIGURATION) VALUES ('INF312', 'Web design', 4  , NULL);
INSERT INTO MATIERE (CODEMATIERE, nom, CREDIT , CONFIGURATION) VALUES ('INF315','Web services' , 6  , NULL);
INSERT INTO MATIERE (CODEMATIERE, nom, CREDIT , CONFIGURATION) VALUES ('INF318','Projet de Web et design' , 10  , NULL);


--association semestre matiere s4-s6
-- Matières obligatoires
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'INF207');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'INF210');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'MTH203');

-- Groupe 1 (optionnel - une seule UE doit être choisie)
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'INF204');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'INF205');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'INF206');

-- Groupe 2 (optionnel - une seule UE doit être choisie)
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'MTH204');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'MTH205');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S4', 'MTH206');

-- Association des matières pour le semestre 5
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S5', 'INF301');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S5', 'INF304');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S5', 'INF307');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S5', 'ORG301');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S5', 'ORG302');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S5', 'ORG303');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S6', 'INF310');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S6', 'INF313');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S6', 'INF316');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S6', 'ORG304');

INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S6', 'INF302');
INSERT INTO semestre_matiere (idSemestre, codeMatiere) VALUES ('S6', 'INF303');



--insertion matiere_option  
--dev matiere_option
        --dev s4
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF204', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF205', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF206', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF207', 'S4', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF210', 'S4', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'MTH204', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'MTH205', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'MTH206', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'MTH203', 'S4', 'false');
        --dev s5
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF301', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF304', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF307', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'ORG301', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'ORG302', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'ORG303', 'S5', 'false');
        --dev s6
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF310', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF313', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF302', 'S6', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF303', 'S6', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'INF316', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('developpement', 'ORG304', 'S6', 'false');

--bd option_matiere
        --bd sem4
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF205', 'S4', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF204', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF206', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF207', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF211', 'S4', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'MTH202', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'MTH205', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'MTH206', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'MTH203', 'S4', 'false');
        --bd sem5
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF302', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF305', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF308', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'ORG301', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'ORG302', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'ORG303', 'S5', 'false');
        --bd sem6
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF311', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF314', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF303', 'S6', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF304', 'S6', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'INF317', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('bases de donnees et reseaux', 'ORG304', 'S6', 'false');
--web et design
        --web sem4
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF204', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF205', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF206', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF209', 'S4', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF212', 'S4', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'MTH202', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'MTH204', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'MTH206', 'S4', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'MTH203', 'S4', 'false');
        --web sem 5
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF303', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF306', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF309', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'ORG301', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'ORG302', 'S5', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'ORG303', 'S5', 'false');
        --web sem 6
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF312', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF315', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF302', 'S6', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF304', 'S6', 'true');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'INF318', 'S6', 'false');
        INSERT INTO options_matieres (idOption, codeMatiere, idSemestre, optionnel) VALUES ('web et design', 'ORG304', 'S6', 'false');

desc options_matieres;

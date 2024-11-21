--dev  S4
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'INF204' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'INF205' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'INF206' , 'A');
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'MTH204' , 'B');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'MTH205' , 'B');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'MTH206' , 'B');
--dev  S6
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'INF302' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('developpement' ,  'INF303' , 'A');

--BD S4
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'INF204' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'INF207' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'INF206' , 'A');
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'MTH202' , 'B');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'MTH205' , 'B');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'MTH206' , 'B');
    
--BD S6
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'INF303' , 'B');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('bases de donnees et reseaux' ,  'INF304' , 'B');

--WEB S4
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'INF204' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'INF205' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'INF206' , 'A');
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'MTH202' , 'B');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'MTH204' , 'B');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'MTH206' , 'B');

--WEB S6
    --UE1
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'INF302' , 'A');
    INSERT INTO ue (idOption , codeMatiere , groupe) VALUES ('web et design' ,  'INF304' , 'A');
commit;
SELECT 
UE.IDOPTION ,
MATIERE.nom ,
MATIERE.CODEMATIERE,
UE.groupe 
FROM UE JOIN MATIERE ON MATIERE.CODEMATIERE = UE.CODEMATIERE  where UE.IDOPTION = 'developpement';

-- Notes pour l'étudiant ETU000001 dans le semestre 4
        -- Matières uniques pour l'option "Développement"
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF204', 7); -- Système d’information géographique
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF210', 16); -- Mini-projet de développement
        -- Matières uniques pour l'option "Bases de données et réseaux"
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF211', 14); -- Réseaux

        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'MTH202', 13); -- Calcul numérique
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'MTH202', 15); -- Calcul numérique
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'MTH202', 5); -- Calcul numérique


        -- Matières uniques pour l'option "Web et design"
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF209', 14); -- Design graphique
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF212', 16); -- Interaction Homme-Machine avancée



        -- Matières communes pour toutes les options
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF205', 12); -- Système d’information
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF206', 14); -- Interface Homme/Machine
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF207', 4); -- Eléments d’algorithmique
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'MTH204', 11); -- Géométrie
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'MTH205', 14); -- Equations différentielles
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'MTH206', 3); -- Optimisation
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'MTH203', 16); -- MAO




        desc semestre_etudiant











-- CREATE OR REPLACE VIEW v_parcours_etudiants_sup 
-- AS        
SELECT 
    se.idSemestre,
    om.IDOPTION,
    e.idEtudiant,
    e.nom AS NOM_ETUDIANT,
    m.nom AS matiere,
    m.CODEMATIERE,
    ne.note,
    m.credit,
    om.OPTIONNEL,
    UE.GROUPE ,
    m.CONFIGURATION
FROM 
    etudiant e
JOIN 
    semestre_etudiant se ON e.idEtudiant = se.idEtudiant
JOIN 
    options_matieres om ON om.idSemestre = se.idSemestre
JOIN 
    matiere m ON om.codeMatiere = m.codeMatiere
LEFT JOIN 
    UE ON m.CODEMATIERE  = UE.CODEMATIERE AND  om.idOption = UE.IDOPTION
LEFT JOIN 
    note_etudiant ne ON e.idEtudiant = ne.idEtudiant AND m.codeMatiere = ne.codeMatiere
 ;





SELECT DISTINCT(CODEMATIERE)    FROM  V_PARCOURS_ETUDIANTS_SUP;
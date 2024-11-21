-- Notes pour l'étudiant ETU000001 dans le semestre 5
        -- Matières uniques pour l'option "Développement"
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF301', 15); -- Architecture logicielle
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF304', 14); -- Développement pour mobiles
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF307', 13); -- Conception en modèle orienté objet

        -- Matières uniques pour l'option "Bases de données et réseaux"
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF302', 16); -- Technologies d’accès aux réseaux
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF305', 14); -- Sécurité des bases de données
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF308', 12); -- Gestion des données

        -- Matières uniques pour l'option "Web et design"
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF303', 17); -- Multimédia
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF306', 15); -- Design interactif
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'INF309', 14); -- UX/UI avancée

        -- Matières communes pour toutes les options
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'ORG301', 12); -- Gestion d’entreprise
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'ORG302', 13); -- Gestion de projets
        INSERT INTO note_etudiant (idEtudiant, codeMatiere, note) VALUES ('ETU000001', 'ORG303', 14); -- Anglais pour les affaires

        COMMIT;
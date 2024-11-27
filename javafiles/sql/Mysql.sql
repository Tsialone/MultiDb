CREATE TABLE etudiant (
    idEtudiant VARCHAR(100) PRIMARY KEY,
    nom VARCHAR(100)
);

CREATE TABLE annee (
    idAnnee VARCHAR(100) PRIMARY KEY NOT NULL,
    nbrMois INTEGER NOT NULL CHECK (nbrMois >= 1), 
    ecolage DECIMAL NOT NULL 
);

CREATE TABLE mdp (
    idMdp VARCHAR(100) PRIMARY KEY
);

CREATE TABLE payement (
    idEtudiant VARCHAR(100),
    idAnnee VARCHAR(100),
    datePayement DATE,
    FOREIGN KEY (idEtudiant) REFERENCES etudiant(idEtudiant) ON DELETE CASCADE,
    FOREIGN KEY (idAnnee) REFERENCES annee(idAnnee) ON DELETE CASCADE
);


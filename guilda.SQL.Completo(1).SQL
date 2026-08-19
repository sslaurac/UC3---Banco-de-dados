CREATE DATABASE guilda_aventureiros;

CREATE TABLE IF NOT EXISTS aventureiros(
id_aventureiro INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
classe VARCHAR(50),
nivel INT 
);

CREATE TABLE IF NOT EXISTS missoes( 
id_missao INT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
dificuldade INT NOT NULL,
recompensa decimal NOT NULL
);

CREATE TABLE IF NOT EXISTS aventuras( livros
id_aventura INT NOT NULL PRIMARY KEY,
id_aventureiro INT NOT NULL,
id_missao INT NOT NULL,
FOREIGN KEY (id_aventureiro) REFERENCES aventureiros (id_aventureiro),
FOREIGN KEY (id_missao) REFERENCES missoes (id_missao)
);

ALTER TABLE aventureiros ADD COLUMN mana VARCHAR(50) NOT NULL;

ALTER TABLE aventureiros MODIFY COLUMN classe VARCHAR(100);

ALTER TABLE missoes RENAME COLUMN recompensa TO recompensa_moedas;

CREATE TABLE IF NOT EXISTS monstros(
id_monstro INT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
vida INT NOT NULL,
nivel INT NOT NULL
);

CREATE TABLE IF NOT EXISTS monstros_derrotados(
id_derrota INT PRIMARY KEY AUTO_INCREMENT,
id_aventureiro INT NOT NULL,
id_monstro INT NOT NULL, 
foreign key (id_aventureiro) references aventureiros (id_aventureiro),
foreign key (id_monstro) references monstros (id_monstro)
);

ALTER TABLE monstros_derrotados ADD CONSTRAINT fk_monstro FOREIGN KEY (id_monstro) REFERENCES monstros (id_monstro);

ALTER TABLE aventureiros DROP COLUMN mana;

ALTER TABLE aventuras RENAME COLUMN id_aventura TO participacoes_missoes;

DROP TABLE IF EXISTS monstros_derrotados;


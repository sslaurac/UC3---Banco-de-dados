CREATE DATABASE cinemateca;

USE cinemateca;

CREATE TABLE filme (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    diretor VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    ano_lancamento INT NOT NULL,
    pais VARCHAR(60) NOT NULL,
    duracao_minutos INT NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    bilheteria DECIMAL(15,2),
    oscar INT DEFAULT 0
);

INSERT INTO filme
(titulo, diretor, genero, ano_lancamento, pais, duracao_minutos, nota, bilheteria, oscar)
VALUES
('O Poderoso Chefão', 'Francis Ford Coppola', 'Crime', 1972, 'Estados Unidos', 175, 9.2, 250341816.00, 3),
('O Poderoso Chefão II', 'Francis Ford Coppola', 'Crime', 1974, 'Estados Unidos', 202, 9.0, 57300000.00, 6),
('Um Sonho de Liberdade', 'Frank Darabont', 'Drama', 1994, 'Estados Unidos', 142, 9.3, 28884504.00, 0),
('Pulp Fiction', 'Quentin Tarantino', 'Crime', 1994, 'Estados Unidos', 154, 8.9, 213928762.00, 1),
('A Lista de Schindler', 'Steven Spielberg', 'Drama', 1993, 'Estados Unidos', 195, 9.0, 322161245.00, 7),
('Forrest Gump', 'Robert Zemeckis', 'Drama', 1994, 'Estados Unidos', 142, 8.8, 678226465.00, 6),
('O Senhor dos Anéis: O Retorno do Rei', 'Peter Jackson', 'Fantasia', 2003, 'Nova Zelândia', 201, 9.0, 1141482046.00, 11),
('O Senhor dos Anéis: A Sociedade do Anel', 'Peter Jackson', 'Fantasia', 2001, 'Nova Zelândia', 178, 8.9, 897690072.00, 4),
('O Senhor dos Anéis: As Duas Torres', 'Peter Jackson', 'Fantasia', 2002, 'Nova Zelândia', 179, 8.8, 947944270.00, 2),
('Interestelar', 'Christopher Nolan', 'Ficção Científica', 2014, 'Estados Unidos', 169, 8.7, 701729206.00, 1),
('A Origem', 'Christopher Nolan', 'Ficção Científica', 2010, 'Estados Unidos', 148, 8.8, 839030630.00, 4),
('O Cavaleiro das Trevas', 'Christopher Nolan', 'Ação', 2008, 'Estados Unidos', 152, 9.0, 1004558444.00, 2),
('Matrix', 'Lana Wachowski e Lilly Wachowski', 'Ficção Científica', 1999, 'Estados Unidos', 136, 8.7, 467222824.00, 4),
('Os Bons Companheiros', 'Martin Scorsese', 'Crime', 1990, 'Estados Unidos', 145, 8.7, 46836394.00, 0),
('Os Infiltrados', 'Martin Scorsese', 'Crime', 2006, 'Estados Unidos', 151, 8.5, 291465034.00, 4),
('Taxi Driver', 'Martin Scorsese', 'Drama', 1976, 'Estados Unidos', 114, 8.2, 28623489.00, 0),
('O Lobo de Wall Street', 'Martin Scorsese', 'Comédia', 2013, 'Estados Unidos', 180, 8.2, 406878233.00, 0),
('Gladiador', 'Ridley Scott', 'Ação', 2000, 'Estados Unidos', 155, 8.5, 465380074.00, 5),
('Alien, o Oitavo Passageiro', 'Ridley Scott', 'Terror', 1979, 'Reino Unido', 117, 8.5, 106285522.00, 1),
('Blade Runner', 'Ridley Scott', 'Ficção Científica', 1982, 'Estados Unidos', 117, 8.1, 41722424.00, 0),
('Titanic', 'James Cameron', 'Romance', 1997, 'Estados Unidos', 194, 7.9, 2266810436.00, 11),
('Avatar', 'James Cameron', 'Ficção Científica', 2009, 'Estados Unidos', 162, 7.9, 2923706026.00, 3),
('O Exterminador do Futuro 2', 'James Cameron', 'Ação', 1991, 'Estados Unidos', 137, 8.6, 520881152.00, 4),
('Jurassic Park', 'Steven Spielberg', 'Aventura', 1993, 'Estados Unidos', 127, 8.2, 1091806515.00, 3),
('Tubarão', 'Steven Spielberg', 'Terror', 1975, 'Estados Unidos', 124, 8.1, 476512065.00, 3),
('E.T. O Extraterrestre', 'Steven Spielberg', 'Ficção Científica', 1982, 'Estados Unidos', 115, 7.9, 792910554.00, 4),
('O Resgate do Soldado Ryan', 'Steven Spielberg', 'Guerra', 1998, 'Estados Unidos', 169, 8.6, 482349603.00, 5),
('Toy Story', 'John Lasseter', 'Animação', 1995, 'Estados Unidos', 81, 8.3, 373554033.00, 1),
('Toy Story 3', 'Lee Unkrich', 'Animação', 2010, 'Estados Unidos', 103, 8.3, 1067316101.00, 2),
('Procurando Nemo', 'Andrew Stanton', 'Animação', 2003, 'Estados Unidos', 100, 8.2, 940335536.00, 1),
('WALL-E', 'Andrew Stanton', 'Animação', 2008, 'Estados Unidos', 98, 8.4, 521311860.00, 1),
('Up: Altas Aventuras', 'Pete Docter', 'Animação', 2009, 'Estados Unidos', 96, 8.3, 735099082.00, 2),
('Os Incríveis', 'Brad Bird', 'Animação', 2004, 'Estados Unidos', 115, 8.0, 631607053.00, 2),
('Ratatouille', 'Brad Bird', 'Animação', 2007, 'Estados Unidos', 111, 8.1, 623726085.00, 1),
('O Rei Leão', 'Roger Allers e Rob Minkoff', 'Animação', 1994, 'Estados Unidos', 88, 8.5, 968511805.00, 2),
('A Viagem de Chihiro', 'Hayao Miyazaki', 'Animação', 2001, 'Japão', 125, 8.6, 395802070.00, 1),
('Meu Vizinho Totoro', 'Hayao Miyazaki', 'Animação', 1988, 'Japão', 86, 8.1, 41709554.00, 0),
('Princesa Mononoke', 'Hayao Miyazaki', 'Fantasia', 1997, 'Japão', 134, 8.3, 169785629.00, 0),
('Parasita', 'Bong Joon-ho', 'Drama', 2019, 'Coreia do Sul', 132, 8.5, 258000000.00, 4),
('Oldboy', 'Park Chan-wook', 'Suspense', 2003, 'Coreia do Sul', 120, 8.3, 15200000.00, 0),
('O Pianista', 'Roman Polanski', 'Drama', 2002, 'França', 150, 8.5, 120072577.00, 3),
('A Vida é Bela', 'Roberto Benigni', 'Comédia', 1997, 'Itália', 116, 8.6, 229163264.00, 3),
('Cinema Paradiso', 'Giuseppe Tornatore', 'Drama', 1988, 'Itália', 155, 8.5, 11990401.00, 1),
('Os Sete Samurais', 'Akira Kurosawa', 'Ação', 1954, 'Japão', 207, 8.6, 346258.00, 0),
('Rashomon', 'Akira Kurosawa', 'Drama', 1950, 'Japão', 88, 8.2, 46865.00, 0),
('A Felicidade Não Se Compra', 'Frank Capra', 'Drama', 1946, 'Estados Unidos', 130, 8.6, 3500000.00, 0),
('Cidadão Kane', 'Orson Welles', 'Drama', 1941, 'Estados Unidos', 119, 8.3, 1585634.00, 1),
('Casablanca', 'Michael Curtiz', 'Romance', 1942, 'Estados Unidos', 102, 8.5, 10462500.00, 3),
('Cantando na Chuva', 'Stanley Donen e Gene Kelly', 'Musical', 1952, 'Estados Unidos', 103, 8.3, 7500000.00, 0),
('2001: Uma Odisseia no Espaço', 'Stanley Kubrick', 'Ficção Científica', 1968, 'Reino Unido', 149, 8.3, 71000000.00, 1),
('Laranja Mecânica', 'Stanley Kubrick', 'Crime', 1971, 'Reino Unido', 136, 8.3, 26900000.00, 0),
('O Iluminado', 'Stanley Kubrick', 'Terror', 1980, 'Reino Unido', 146, 8.4, 46998772.00, 0),
('Full Metal Jacket', 'Stanley Kubrick', 'Guerra', 1987, 'Reino Unido', 116, 8.2, 46357676.00, 0),
('De Volta para o Futuro', 'Robert Zemeckis', 'Ficção Científica', 1985, 'Estados Unidos', 116, 8.5, 388774684.00, 1),
('De Volta para o Futuro II', 'Robert Zemeckis', 'Ficção Científica', 1989, 'Estados Unidos', 108, 7.8, 332500000.00, 0),
('Indiana Jones e os Caçadores da Arca Perdida', 'Steven Spielberg', 'Aventura', 1981, 'Estados Unidos', 115, 8.4, 389925971.00, 5),
('Star Wars: Uma Nova Esperança', 'George Lucas', 'Ficção Científica', 1977, 'Estados Unidos', 121, 8.6, 775398007.00, 7),
('Star Wars: O Império Contra-Ataca', 'Irvin Kershner', 'Ficção Científica', 1980, 'Estados Unidos', 124, 8.7, 538375067.00, 2),
('Star Wars: O Retorno de Jedi', 'Richard Marquand', 'Ficção Científica', 1983, 'Estados Unidos', 131, 8.3, 475106177.00, 4),
('Os Vingadores', 'Joss Whedon', 'Ação', 2012, 'Estados Unidos', 143, 8.0, 1518815515.00, 0),
('Vingadores: Guerra Infinita', 'Anthony Russo e Joe Russo', 'Ação', 2018, 'Estados Unidos', 149, 8.4, 2052415039.00, 0),
('Vingadores: Ultimato', 'Anthony Russo e Joe Russo', 'Ação', 2019, 'Estados Unidos', 181, 8.4, 2799439100.00, 0),
('Homem de Ferro', 'Jon Favreau', 'Ação', 2008, 'Estados Unidos', 126, 7.9, 585796247.00, 0),
('Pantera Negra', 'Ryan Coogler', 'Ação', 2018, 'Estados Unidos', 134, 7.3, 1349926083.00, 3),
('Coringa', 'Todd Phillips', 'Drama', 2019, 'Estados Unidos', 122, 8.3, 1074458282.00, 2),
('Batman Begins', 'Christopher Nolan', 'Ação', 2005, 'Estados Unidos', 140, 8.2, 373672993.00, 0),
('Mulher-Maravilha', 'Patty Jenkins', 'Ação', 2017, 'Estados Unidos', 141, 7.4, 822854286.00, 0),
('Piratas do Caribe: A Maldição do Pérola Negra', 'Gore Verbinski', 'Aventura', 2003, 'Estados Unidos', 143, 8.1, 654264015.00, 0),
('Harry Potter e a Pedra Filosofal', 'Chris Columbus', 'Fantasia', 2001, 'Reino Unido', 152, 7.6, 1024797604.00, 0),
('Harry Potter e as Relíquias da Morte: Parte 2', 'David Yates', 'Fantasia', 2011, 'Reino Unido', 130, 8.1, 1341511219.00, 0),
('O Hobbit: Uma Jornada Inesperada', 'Peter Jackson', 'Fantasia', 2012, 'Nova Zelândia', 169, 7.8, 1017035688.00, 0),
('Mad Max: Estrada da Fúria', 'George Miller', 'Ação', 2015, 'Austrália', 120, 8.1, 380410000.00, 6),
('Django Livre', 'Quentin Tarantino', 'Faroeste', 2012, 'Estados Unidos', 165, 8.5, 425368238.00, 2),
('Bastardos Inglórios', 'Quentin Tarantino', 'Guerra', 2009, 'Estados Unidos', 153, 8.4, 321457747.00, 1),
('Era Uma Vez em... Hollywood', 'Quentin Tarantino', 'Comédia', 2019, 'Estados Unidos', 161, 7.6, 377600000.00, 2),
('Os Oito Odiados', 'Quentin Tarantino', 'Faroeste', 2015, 'Estados Unidos', 168, 7.8, 156000000.00, 1),
('O Silêncio dos Inocentes', 'Jonathan Demme', 'Terror', 1991, 'Estados Unidos', 118, 8.6, 272742922.00, 5),
('Seven: Os Sete Crimes Capitais', 'David Fincher', 'Crime', 1995, 'Estados Unidos', 127, 8.6, 327333559.00, 0),
('A Rede Social', 'David Fincher', 'Drama', 2010, 'Estados Unidos', 120, 7.8, 224920315.00, 3),
('O Curioso Caso de Benjamin Button', 'David Fincher', 'Drama', 2008, 'Estados Unidos', 166, 7.8, 329631958.00, 3),
('Whiplash: Em Busca da Perfeição', 'Damien Chazelle', 'Drama', 2014, 'Estados Unidos', 106, 8.5, 49800000.00, 3),
('La La Land: Cantando Estações', 'Damien Chazelle', 'Musical', 2016, 'Estados Unidos', 128, 8.0, 472040000.00, 6),
('Oppenheimer', 'Christopher Nolan', 'Drama', 2023, 'Estados Unidos', 180, 8.6, 976500000.00, 7),
('Barbie', 'Greta Gerwig', 'Comédia', 2023, 'Estados Unidos', 114, 6.8, 1445500000.00, 1),
('Duna', 'Denis Villeneuve', 'Ficção Científica', 2021, 'Estados Unidos', 155, 8.0, 407573000.00, 6),
('Duna: Parte Dois', 'Denis Villeneuve', 'Ficção Científica', 2024, 'Estados Unidos', 166, 8.5, 714444000.00, 2),
('Blade Runner 2049', 'Denis Villeneuve', 'Ficção Científica', 2017, 'Estados Unidos', 164, 8.0, 267000000.00, 2),
('A Chegada', 'Denis Villeneuve', 'Ficção Científica', 2016, 'Estados Unidos', 116, 7.9, 203388186.00, 1),
('Sicario: Terra de Ninguém', 'Denis Villeneuve', 'Suspense', 2015, 'Estados Unidos', 121, 7.7, 84672000.00, 0),
('O Grande Lebowski', 'Joel Coen e Ethan Coen', 'Comédia', 1998, 'Estados Unidos', 117, 8.1, 46189568.00, 0),
('Onde os Fracos Não Têm Vez', 'Joel Coen e Ethan Coen', 'Crime', 2007, 'Estados Unidos', 122, 8.2, 171627166.00, 4),
('Fargo', 'Joel Coen', 'Crime', 1996, 'Estados Unidos', 98, 8.1, 60611975.00, 2),
('O Show de Truman', 'Peter Weir', 'Drama', 1998, 'Estados Unidos', 103, 8.2, 264118201.00, 0),
('Sociedade dos Poetas Mortos', 'Peter Weir', 'Drama', 1989, 'Estados Unidos', 128, 8.1, 235860116.00, 1),
('Brilho Eterno de uma Mente sem Lembranças', 'Michel Gondry', 'Romance', 2004, 'Estados Unidos', 108, 8.3, 74000000.00, 1),
('Amnésia', 'Christopher Nolan', 'Suspense', 2000, 'Estados Unidos', 113, 8.4, 40047078.00, 0),
('O Grande Truque', 'Christopher Nolan', 'Drama', 2006, 'Estados Unidos', 130, 8.5, 109676311.00, 0),
('O Fabuloso Destino de Amélie Poulain', 'Jean-Pierre Jeunet', 'Romance', 2001, 'França', 122, 8.3, 174200000.00, 0),
('Os Intocáveis', 'Brian De Palma', 'Crime', 1987, 'Estados Unidos', 119, 7.8, 106240936.00, 1),
('Scarface', 'Brian De Palma', 'Crime', 1983, 'Estados Unidos', 170, 8.3, 66500000.00, 0),
('Rocky: Um Lutador', 'John G. Avildsen', 'Drama', 1976, 'Estados Unidos', 120, 8.1, 225000000.00, 3),
('O Exorcista', 'William Friedkin', 'Terror', 1973, 'Estados Unidos', 132, 8.1, 441306145.00, 2),
('Apocalypse Now', 'Francis Ford Coppola', 'Guerra', 1979, 'Estados Unidos', 147, 8.4, 150000000.00, 2),
('Os Suspeitos', 'Bryan Singer', 'Crime', 1995, 'Estados Unidos', 106, 8.5, 34449000.00, 2),
('O Sexto Sentido', 'M. Night Shyamalan', 'Suspense', 1999, 'Estados Unidos', 107, 8.2, 672806292.00, 0),
('Réquiem para um Sonho', 'Darren Aronofsky', 'Drama', 2000, 'Estados Unidos', 102, 8.3, 7390108.00, 0),
('O Pianista', 'Roman Polanski', 'Drama', 2002, 'França', 150, 8.5, 120072577.00, 3),
('Moulin Rouge!', 'Baz Luhrmann', 'Musical', 2001, 'Austrália', 127, 7.6, 179200000.00, 2),
('O Discurso do Rei', 'Tom Hooper', 'Drama', 2010, 'Reino Unido', 118, 8.0, 484000000.00, 4),
('12 Anos de Escravidão', 'Steve McQueen', 'Drama', 2013, 'Estados Unidos', 134, 8.1, 187733202.00, 3),
('Green Book: O Guia', 'Peter Farrelly', 'Drama', 2018, 'Estados Unidos', 130, 8.2, 321752656.00, 3),
('Nomadland', 'Chloé Zhao', 'Drama', 2020, 'Estados Unidos', 107, 7.3, 39360000.00, 3),
('Tudo em Todo o Lugar ao Mesmo Tempo', 'Daniel Kwan e Daniel Scheinert', 'Ficção Científica', 2022, 'Estados Unidos', 139, 7.8, 143400000.00, 7);

-- 1
SELECT titulo, ano_lancamento FROM filme ORDER BY ano_lancamento DESC;

-- 2
SELECT titulo, ano_lancamento FROM filme ORDER BY ano_lancamento DESC LIMIT 10;
 
-- 3
SELECT titulo, ano_lancamento FROM filme ORDER BY ano_lancamento ASC LIMIT 10;

-- 4
SELECT titulo, genero, nota FROM filme ORDER BY nota DESC LIMIT 10;
    
-- 5 
SELECT * FROM filme WHERE genero = 'Terror' ORDER BY nota DESC LIMIT 5;
    
-- 6 
SELECT * FROM filme WHERE ano_lancamento >= 2015
 AND nota >= 7 
 ORDER BY nota
 DESC LIMIT 10; 

-- 7 
SELECT titulo, duracao_minutos FROM filme 
ORDER BY duracao_minutos 
DESC LIMIT 5;

-- 8
SELECT * FROM filme WHERE duracao_minutos
BETWEEN 80 AND 120
AND nota >= 7 
ORDER BY nota DESC 
LIMIT 10;

-- 9 
SELECT * FROM filme 
WHERE genero IN ('Ação', 'Aventura', 'Ficção Cientifica')
ORDER BY nota DESC, ano_lancamento DESC
LIMIT 10;

-- 10
SELECT * FROM filme 
WHERE genero IN ('Ação', 'Aventura', 'Ficção Cientifica')
AND duracao_minutos <= 150
AND nota >= 7.5
AND ano_lancamento >= 2010
ORDER BY nota DESC, ano_lancamento DESC 
LIMIT 5;

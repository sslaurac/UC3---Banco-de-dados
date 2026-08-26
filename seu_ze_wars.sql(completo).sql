CREATE DATABASE mercadinho_do_ze;

USE mercadinho_do_ze;

-- 2/15
CREATE TABLE IF NOT EXISTS produtos (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(80) NOT NULL,
categoria VARCHAR(50) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL
);


-- 3/15
CREATE TABLE IF NOT EXISTS clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(80) NOT NULL,
telefone VARCHAR(20),
saldo_fiado DECIMAL(10,2) DEFAULT 0
);

-- 4/15
CREATE TABLE IF NOT EXISTS vendas (
id_venda INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT NOT NULL,
data_venda DATE,
FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);          

-- 5/15 
CREATE TABLE IF NOT EXISTS itens_venda (
id_item INT PRIMARY KEY AUTO_INCREMENT,
id_venda INT NOT NULL,
id_produto INT NOT NULL,
quantidade INT NOT NULL DEFAULT 1,
FOREIGN KEY (id_venda) REFERENCES vendas (id_venda),
FOREIGN KEY (id_produto) REFERENCES produtos (id_produto)
);


-- 6/15
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
("Cerveja Lata 350ml",  "Bebidas",  4.50,  120),
("Coxinha Congelada", "Salgados",   3.20, 60),
("Refrigerante 2L", "Bebidas", 8.90, 40),
("Pão de Forma", "Padaria", 7.00, 25);

-- 7/15
INSERT INTO clientes (nome, telefone, saldo_fiado) VALUES
("Dona Marlene", 99999999, 45.00),
("Seu Chico", 82588574,  0.00),
("Dona Evinha", 96588747, 10.99);

-- 8/15
INSERT INTO vendas (id_cliente, data_venda) VALUES
(" 2", "2026-08-13");

INSERT INTO itens_venda (id_venda, id_produto, quantidade) VALUES
(1,1,2);
INSERT INTO itens_venda (id_venda, id_produto, quantidade) VALUES
(1,2,1);

-- 9/15
UPDATE produtos SET estoque = 18 WHERE id_produto= 1;

-- 10/15
UPDATE produtos SET preco = 2.25 WHERE id_produto= 2;

-- 11/15
UPDATE clientes SET saldo_fiado = 0 WHERE id_cliente= 1;

-- 12/15
DELETE FROM produtos WHERE id_produto= 4;

-- 13/15
ALTER TABLE produtos ADD COLUMN validade DATE;
ALTER TABLE clientes RENAME COLUMN telefone TO whats;
ALTER TABLE produtos MODIFY categoria VARCHAR(80);

-- 14/15
ALTER TABLE itens_venda ADD CONSTRAINT fk_item_produto
FOREIGN KEY (id_produto) REFERENCES produtos (id_produto);

-- 15/15
DELETE FROM itens_venda WHERE id_item = 2;

DROP TABLE testes_estagiario;

-- não executar --
DROP DATABASE mercadinho_do_ze;



-- 1/12
SELECT * FROM produtos WHERE categoria <> 'Bebida Alcoólica Importada';

-- 2/12
SELECT * FROM produtos WHERE preco > 50;

-- 3/12
SELECT * FROM produtos WHERE preco < 10;


-- 4/12
ALTER TABLE clientes ADD COLUMN pontos INT;
UPDATE clientes SET pontos = 100 WHERE id_cliente= 1;
UPDATE clientes SET pontos = 28 WHERE id_cliente= 2;
SELECT * FROM clientes WHERE pontos >= 100;
SELECT * FROM clientes WHERE pontos <= 30;

-- 5/12
ALTER TABLE clientes ADD COLUMN categoria_favorita VARCHAR(50);
ALTER TABLE clientes ADD COLUMN compras_semana INT;
ALTER TABLE clientes ADD COLUMN ano_cadastro VARCHAR(4);

UPDATE clientes SET categoria_favorita = 'Bebidas' WHERE id_cliente = 2;
UPDATE clientes SET categoria_favorita = 'Bebidas' WHERE id_cliente = 1;
SELECT * FROM clientes WHERE categoria_favorita = 'Bebidas' AND pontos > 80;

-- 6/12
-- adicionaei valor a compra da semana --
UPDATE clientes SET compras_semana = 6 WHERE id_cliente = 1;
SELECT * FROM clientes WHERE pontos  >= 90 OR compras_semana >=5;

-- 7/12
SELECT * FROM produtos WHERE NOT categoria = 'Bebidas';

-- 8/12
SELECT * FROM clientes WHERE pontos BETWEEN 50 AND 90;

-- 9/12
SELECT * FROM produtos WHERE categoria IN ( 'Bebidas', 'Salgados', 'Padaria');

-- 10/12
CREATE TABLE IF NOT EXISTS premios(
id_premio INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
pontos_necessarios INT,
estoque_premio INT
);

INSERT INTO premios (nome) VALUES 
('Kit jogo de xicaras'),
('Jogo de talheres Especial'),
('Jogo de toalhas');


SELECT * FROM premios WHERE nome LIKE 'Kit%';
SELECT * FROM premios WHERE nome LIKE '%Especial';


-- 11/12
SELECT * FROM clientes WHERE nome LIKE '%arlene%';

-- 12/12
UPDATE clientes SET ano_cadastro = "1993" WHERE id_cliente = 2;

SELECT * FROM clientes WHERE ano_cadastro LIKE '198_';
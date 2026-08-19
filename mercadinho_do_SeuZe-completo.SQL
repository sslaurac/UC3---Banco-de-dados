CREATE DATABASE mercadinho_do_ze;

CREATE TABLE IF NOT EXISTS produtos (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL, 
    categoria VARCHAR(50) NOT NULL, 
    preco DECIMAL (10,2) NOT NULL,
    estoque INT NOT NULL
);
  -- 3/15  
CREATE TABLE IF NOT EXISTS clientes (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL, 
    telefone VARCHAR(11) NOT NULL,
    saldo_fiado DECIMAL(10,2) NOT NULL DEFAULT 0
);

-- 4/15
CREATE TABLE IF NOT EXISTS vendas (
	id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    data_venda DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
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
("CocaCola Lata", "bebidas", 5.0, 120),
("Chocolate Barra", "doces", 12.90, 60),
("Pão de forma", "padaria", 7.99, 40),
("Morango Caixa", "hortifruti", 8.90, 25);

-- 7/15
INSERT INTO clientes (nome, telefone, saldo_fiado) VALUES
("Dona Marlene", "51999955222", 45.00),
("Seu Chico", "51999966333", 0),
("Dona Maria", "51999944777", 12.80);

-- 8/15
INSERT INTO vendas (id_cliente, data_venda) VALUES 
(2, "2026-08-7");

INSERT INTO itens_venda (id_venda, id_produto, quantidade) VALUES 
(1, 1, 2);
INSERT INTO itens_venda (id_venda, id_produto, quantidade) VALUES 
(1, 3, 1);
 
 -- 9/15
UPDATE produtos SET estoque = 18 WHERE id_produto = 1;

-- 10/15
UPDATE produtos SET preco = 2.25 WHERE id_produto = 4;

-- 11/15
UPDATE clientes SET saldo_fiado = 0 WHERE id_cliente = 1;

-- 12/15
DELETE FROM produtos WHERE id_produto = 3;

-- 13/15
ALTER TABLE produtos ADD COLUMN validade DATE;
ALTER TABLE clientes RENAME COLUMN telefone TO whatsapp;
ALTER TABLE produtos MODIFY COLUMN categoria VARCHAR(80);


-- 14/15 
ALTER TABLE itens_venda ADD CONSTRAINT fk_item_produto 
FOREIGN KEY (id_produto) REFERENCES produtos (id_produto);

-- 15/15
DELETE FROM itens_venda WHERE id_item = 6;
DROP TABLE IF EXISTS testes_estagiario;

 -- Não executar
DROP DATABASE IF EXISTS mercadinho_do_ze;
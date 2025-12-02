-- ===============================
-- CRIAÇÃO DO BANCO E DAS TABELAS
-- ===============================

CREATE DATABASE dribolos;
USE dribolos;

-- Tabela CLIENTE
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

-- Tabela PRODUTO
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco_base DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(50),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela ENCOMENDA
CREATE TABLE encomenda (
    id_encomenda INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    data_entrega DATE,
    horario TIME,
    forma_entrega VARCHAR(50),
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela PRODUÇÃO
CREATE TABLE producao (
    id_producao INT AUTO_INCREMENT PRIMARY KEY,
    data_producao DATE,
    status_preparo VARCHAR(50),
    id_encomenda INT NOT NULL,
    FOREIGN KEY (id_encomenda) REFERENCES encomenda(id_encomenda)
);

-- Tabela PAGAMENTO
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    data_pagamento DATE,
    valor DECIMAL(10,2),
    metodo VARCHAR(50),
    id_encomenda INT NOT NULL,
    FOREIGN KEY (id_encomenda) REFERENCES encomenda(id_encomenda)
);

CREATE TABLE entrega (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    endereco_entrega VARCHAR(200),
    taxa_entrega DECIMAL(10,2),
    nome_entregador VARCHAR(100),
    status_entrega VARCHAR(50),
    id_encomenda INT NOT NULL,
    FOREIGN KEY (id_encomenda) REFERENCES encomenda(id_encomenda)
);


CREATE TABLE ingrediente (
    id_ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    nome_ingrediente VARCHAR(100) NOT NULL,
    estoque_atual DECIMAL(10,2),
    unidade_medida VARCHAR(20)
);


-- Tabela ENCOMENDA_PRODUTO (tabela associativa)
CREATE TABLE encomenda_produto (
    id_encomenda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT,
    valor_unitario DECIMAL(10,2),
    observacoes VARCHAR(200),
    PRIMARY KEY (id_encomenda, id_produto),
    FOREIGN KEY (id_encomenda) REFERENCES encomenda(id_encomenda),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);


CREATE TABLE produto_ingrediente (
    id_produto INT NOT NULL,
    id_ingrediente INT NOT NULL,
    quantidade_usada DECIMAL(10,2),
    PRIMARY KEY (id_produto, id_ingrediente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY (id_ingrediente) REFERENCES ingrediente(id_ingrediente)
);


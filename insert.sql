-- ===============================
-- INSERÇÃO DE DADOS
-- ===============================

INSERT INTO cliente (nome, telefone, endereco)
VALUES 
('Ana Souza', '11988887777', 'Rua Flores, 120'),
('Carlos Lima', '11999996666', 'Av. Paulista, 300'),
('Mariana Alves', '11977775555', 'Rua das Acácias, 45');

INSERT INTO produto (nome, preco_base, tipo, id_cliente)
VALUES
('Bolo de Chocolate', 60.00, 'Bolo', 1),
('Torta de Limão', 45.00, 'Torta', 2),
('Brigadeiro Gourmet', 3.50, 'Doce', 3);

INSERT INTO encomenda (data_pedido, data_entrega, horario, forma_entrega, id_cliente)
VALUES
('2025-03-01', '2025-03-03', '14:00:00', 'Entrega', 1),
('2025-03-02', '2025-03-05', '10:30:00', 'Retirada', 2),
('2025-03-04', '2025-03-07', '18:00:00', 'Entrega', 3);

INSERT INTO producao (data_producao, status_preparo, id_encomenda)
VALUES
('2025-03-02', 'Em andamento', 1),
('2025-03-04', 'Concluído', 2),
('2025-03-06', 'A iniciar', 3);

INSERT INTO pagamento (data_pagamento, valor, metodo, id_encomenda)
VALUES
('2025-03-02', 150.00, 'Pix', 1),
('2025-03-04', 200.00, 'Cartão de Crédito', 2),
('2025-03-06', 75.00, 'Dinheiro', 3);

INSERT INTO entrega (endereco_entrega, taxa_entrega, nome_entregador, status_entrega, id_encomenda)
VALUES
('Rua Flores, 120', 10.00, 'João Moto', 'Entregue', 1),
('Av. Paulista, 300', 12.00, 'Carlos Bike', 'Saiu para entrega', 2),
('Rua das Acácias, 45', 8.00, 'Marcos Carro', 'Pendente', 3);

INSERT INTO ingrediente (nome_ingrediente, estoque_atual, unidade_medida)
VALUES
('Farinha de Trigo', 50, 'kg'),
('Açúcar', 30, 'kg'),
('Chocolate em pó', 20, 'kg'),
('Limão', 15, 'un'),
('Leite Condensado', 10, 'l');

INSERT INTO encomenda_produto (id_encomenda, id_produto, quantidade, valor_unitario, observacoes)
VALUES
(1, 1, 1, 60.00, 'Sem lactose'),
(2, 2, 1, 45.00, 'Torta gelada'),
(3, 3, 10, 3.50, 'Brigadeiros embalados');


INSERT INTO produto_ingrediente (id_produto, id_ingrediente, quantidade_usada)
VALUES
(1, 1, 1.5),
(1, 3, 0.8),
(2, 4, 2),
(3, 5, 0.1);

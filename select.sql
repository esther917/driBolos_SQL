-- ===============================
-- CONSULTAS SQL (SELECT)
-- ===============================

-- 1. Listar todas as encomendas com os nomes dos clientes
SELECT e.id_encomenda, c.nome AS cliente, e.data_pedido, e.data_entrega
FROM encomenda e
JOIN cliente c ON e.id_cliente = c.id_cliente;

-- 2. Produtos acima de um certo valor
SELECT nome, preco_base
FROM produto
WHERE preco_base > 40
ORDER BY preco_base DESC;

-- 3. Valor total por item de encomenda
SELECT c.nome AS cliente, p.nome AS produto, ep.quantidade,
       (ep.quantidade * ep.valor_unitario) AS valor_total
FROM encomenda_produto ep
JOIN encomenda e ON ep.id_encomenda = e.id_encomenda
JOIN cliente c ON e.id_cliente = c.id_cliente
JOIN produto p ON ep.id_produto = p.id_produto;

-- 4. Entregas pendentes
SELECT nome_entregador, endereco_entrega, status_entrega
FROM entrega
WHERE status_entrega = 'Pendente';

-- 5. Ingredientes usados por produto
SELECT p.nome AS produto, i.nome_ingrediente, pi.quantidade_usada, i.unidade_medida
FROM produto p
JOIN produto_ingrediente pi ON p.id_produto = pi.id_produto
JOIN ingrediente i ON pi.id_ingrediente = i.id_ingrediente;

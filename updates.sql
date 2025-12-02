-- COMANDOS UPDATE
-- ===============================

-- Atualizar status de entrega
UPDATE entrega
SET status_entrega = 'Entregue'
WHERE id_encomenda = 3;

-- Alterar preço de um produto
UPDATE produto
SET preco_base = 65.00
WHERE id_produto = 1;

-- Atualizar telefone de um cliente
UPDATE cliente
SET telefone = '11999996666'
WHERE id_cliente = 2;

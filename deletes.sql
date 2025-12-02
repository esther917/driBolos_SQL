-- ===============================
-- COMANDOS DELETE
-- ===============================

-- Remover ingrediente do estoque
DELETE FROM ingrediente
WHERE id_ingrediente = 2;

-- Remover registro de produção
DELETE FROM producao
WHERE id_producao = 3;

-- Remover registro de entrega
DELETE FROM entrega
WHERE id_entrega = 3;

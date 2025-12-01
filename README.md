# driBolos_SQL
🧱 Modelo Lógico do Banco (Descrição das Tabelas)

1. Produto
Campo	Tipo	Detalhes
id_produto	INT	PK, AI
nome_produto	VARCHAR(100)	NOT NULL
preco	DECIMAL(10,2)	NOT NULL
categoria	VARCHAR(50)	NOT NULL

3. Ingrediente
Campo	Tipo	Detalhes
id_ingrediente	INT	PK, AI
nome	VARCHAR(100)	NOT NULL
estoque	DECIMAL(10,2)	NOT NULL
unidade_medida	VARCHAR(10)	NOT NULL

5. Produto_Ingrediente

Tabela de associação N:N

Campo	Tipo	Detalhes
id_produto	INT	PK, FK → produto(id_produto)
id_ingrediente	INT	PK, FK → ingrediente(id_ingrediente)
quantidade_usada	DECIMAL(10,2)	NOT NULL

4. Encomenda
Campo	Tipo	Detalhes
id_encomenda	INT	PK, AI
data_encomenda	DATE	NOT NULL
cliente	VARCHAR(100)	NOT NULL
valor_total	DECIMAL(10,2)	NOT NULL

6. Entrega
Campo	Tipo	Detalhes
id_entrega	INT	PK, AI
endereco	VARCHAR(200)	NOT NULL
taxa_entrega	DECIMAL(10,2)	NOT NULL
nome_entregador	VARCHAR(100)	NOT NULL
status	VARCHAR(50)	NOT NULL
id_encomenda	INT	FK → encomenda(id_encomenda)


🧩 Scripts Incluídos
📄 1. create_tables.sql
Contém todos os comandos CREATE TABLE com:
chaves primárias
chaves estrangeiras
relacionamentos
tipos de dados corretos

📄 2. insert_data.sql
Inclui:
População das tabelas com INSERT INTO
Dados reais de produtos
Ingredientes coerentes
Relação produto–ingrediente
Encomendas
Entregas

📄 3. select_queries.sql
Consultas utilizando:

SELECT *
Filtros com WHERe
Ordenação com ORDER BY
Limite com LIMIT
INNER JOIN entre tabelas

Exemplos:

SELECT p.nome_produto, i.nome, pi.quantidade_usada
FROM produto_ingrediente pi
JOIN produto p ON p.id_produto = pi.id_produto
JOIN ingrediente i ON i.id_ingrediente = pi.id_ingrediente;

📄 4. update_delete.sql
Contém:

→ 3 comandos UPDATE
Ex.:
UPDATE ingrediente SET estoque = estoque - 2 WHERE id_ingrediente = 1;

→ 3 comandos DELETE
Ex.:
DELETE FROM entrega WHERE status = 'Cancelada';

▶️ Como Executar
1. Abra o MySQL Workbench
2. Execute os scripts na ordem:

1️⃣ create_tables.sql
2️⃣ insert_data.sql
3️⃣ select_queries.sql
4️⃣ update_delete.sql

3. Verifique o funcionamento no schema driBolos.
👩‍💻 Autora

Esther
Curso: Banco de Dados – Atividade 4 (DML & Modelagem)

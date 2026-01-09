# Criar banco de dados
CREATE DATABASE db_farmacia_bem_estar;

# Selecionar o banco de dados
USE db_farmacia_bem_estar;

# Criar tabela categorias
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(30),
descricao VARCHAR(100)
);

# Criar tabela produtos
CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_do_produto VARCHAR (30),
valor DECIMAL(6,2),
quantidade_estoque INT,
fabricante VARCHAR(100),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

# adiciona as categorias da tabela
INSERT INTO tb_categorias (categoria, descricao) VALUES
('Analgésicos', 'Medicamentos para dor e febre'),
('Antibióticos', 'Tratamento de infecções bacterianas'),
('Vitaminas', 'Suplementos para saúde e energia'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Itens de higiene diária');

# Adiciona produtos a tabela
INSERT INTO tb_produtos(nome_do_produto,valor,quantidade_estoque,fabricante,categoria_id) VALUES
('Dipirona', 12.50, 100, 'Medley', 1),
('Paracetamol', 10.00, 150, 'EMS', 1),
('Amoxicilina', 25.90, 80, 'Aché', 2),
('Azitromicina', 32.00, 60, 'Eurofarma', 2),
('Vitamina C', 18.00, 120, 'Sundown', 3),
('Multivitamínico', 45.00, 50, 'Centrum', 3),
('Protetor Solar FPS50', 65.00, 40, 'La Roche-Posay', 4),
('Sabonete Antibacteriano', 6.50, 200, 'Protex', 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

# Seleciona todos produtos que tenham valor superior a R$:50,00
SELECT * FROM tb_produtos WHERE valor>50;

# Seleciona todos os produtos com valor entre R$:5,00 e R$:60,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

# Seleciona todos os produtos que possuam a letra "C" no atributo nome
SELECT * FROM tb_produtos WHERE nome_do_produto LIKE "%c%";

# Seleciona todos os produtos com as suas categortias
SELECT tb_produtos.id,nome_do_produto,valor,quantidade_estoque,fabricante,categoria,descricao
FROM tb_produtos INNER JOIN tb_categorias
ON  tb_produtos.categoria_id = tb_categorias.id;

# Seleciona todos os produtos com as respectivas categorias filtrando pela categoria consmeticos
SELECT tb_produtos.id,nome_do_produto,valor,quantidade_estoque,fabricante,categoria,descricao
FROM tb_produtos INNER JOIN tb_categorias
ON  tb_produtos.categoria_id = tb_categorias.id
WHERE categoria = "cosmeticos";
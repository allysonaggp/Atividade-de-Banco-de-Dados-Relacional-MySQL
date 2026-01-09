--  Cria o banco de dados
CREATE DATABASE db_cidade_das_carnes;

-- Seleciona o banco de dados
USE db_cidade_das_carnes;

-- Cria a tabela Categorias
CREATE TABLE
    tb_categorias (id BIGINT AUTO_INCREMENT PRIMARY KEY, tipo VARCHAR(50), setor VARCHAR(50), armazenamento VARCHAR(50));

-- Cria a tabela Produtos
CREATE TABLE
    tb_produtos (
        id BIGINT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100),
        valor DECIMAL(6, 2),
        descricao VARCHAR(150),
        id_categorias BIGINT,
        Foreign Key (id_categorias) REFERENCES tb_categorias (id)
    );

-- Adiciona as categorias a tabela
INSERT INTO
    tb_categorias (tipo, setor, armazenamento)
VALUES
    ('Bovinos', 'Carnes Bovinas', 'Refrigerado'),
    ('Suínos', 'Carnes Suínas', 'Refrigerado'),
    ('Aves', 'Carnes de Aves', 'Congelado'),
    ('Embutidos', 'Processados', 'Refrigerado');

-- Adiciona todos os produtos a categoria
INSERT INTO
    tb_produtos (nome, valor, descricao, id_categorias)
VALUES
    ('Picanha', 79.90, 'Corte nobre bovino', 1),
    ('Alcatra', 49.90, 'Carne bovina macia para churrasco', 1),
    ('Costela Suína', 34.50, 'Corte suculento de porco', 2),
    ('Lombo Suíno', 39.90, 'Corte magro de porco', 2),
    ('Peito de Frango', 19.90, 'Corte de frango sem osso', 3),
    ('Coxa de Frango', 15.90, 'Corte popular de frango', 3),
    ('Linguiça Toscana', 22.90, 'Linguiça artesanal de porco', 4),
    ('Salsicha', 12.90, 'Produto processado para cachorro-quente', 4);

-- Retorna todos os itens da tabela categorias
SELECT
    *
FROM
    tb_categorias;

-- Retorna todos os itens da tabela produtos
SELECT
    *
FROM
    tb_produtos
WHERE
    valor > 50;

-- Retorna todos os itens da tabela produtos que tenham valor entre R$:50,00 e R$100,00
SELECT
    *
from
    tb_produtos
WHERE
    valor BETWEEN 50 AND 150;

-- Retorna todos os itens da tabela produtos que possuam a letra "c" no nome
SELECT
    *
from
    tb_produtos
WHERE
    nome LIKE "%c%";

-- Retorna todos os valores das tabelas produtos e categorias
SELECT
    tb_produtos.id,
    nome,
    valor,
    tipo,
    tipo,
    setor,
    armazenamento
FROM
    tb_produtos
    INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id;

-- Retorna todos os valores da tabela produtos e categorias filtrado por "Aves"
SELECT
    tb_produtos.id,
    nome,
    valor,
    tipo,
    tipo,
    setor,
    armazenamento
FROM
    tb_produtos
    INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id
WHERE
    tipo = "Aves"
-- Cria o banco de dados 
CREATE DATABASE db_construindo_vidas;

-- Seleciona o banco de dados
USE db_construindo_vidas;

--  Cria atabela categorias
CREATE TABLE
    tb_categorias (id BIGINT AUTO_INCREMENT PRIMARY KEY, categoria VARCHAR(50), descricao VARCHAR(100));

--  Cria atabela produtos
CREATE TABLE
    tb_produtos (
        id BIGINT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100),
        fornecedor VARCHAR(100),
        valor DECIMAL(6, 2),
        id_categoria BIGINT,
        Foreign Key (id_categoria) REFERENCES tb_categorias (id)
    );

-- Inserindo categorias
INSERT INTO
    tb_categorias (categoria, descricao)
VALUES
    ('Cimento e Argamassa', 'Produtos para alvenaria e reboco'),
    ('Madeiras', 'Tábuas, vigas e compensados para estruturas'),
    ('Ferragens', 'Pregos, parafusos e itens metálicos'),
    ('Hidráulica', 'Tubos, conexões e acessórios de água'),
    ('Elétrica', 'Fios, cabos e materiais elétricos');

-- Inserindo produtos
INSERT INTO
    tb_produtos (nome, fornecedor, valor, id_categoria)
VALUES
    ('Cimento CP-II 50kg', 'Votorantim', 42.90, 1),
    ('Argamassa AC-II 20kg', 'Quartzolit', 28.50, 1),
    ('Tábua de Pinus 2,5m', 'Madeireira Silva', 65.00, 2),
    ('Compensado 15mm', 'Duratex', 120.00, 2),
    ('Parafuso 5x50mm c/100', 'Belgo', 18.90, 3),
    ('Tubo PVC 25mm 3m', 'Tigre', 22.50, 4),
    ('Registro Esfera 1/2"', 'Amanco', 35.00, 4),
    ('Cabo Flexível 2,5mm', 'Pirelli', 210.00, 5);

-- Retorna todos os produtos com valor maior que R$:100,00
SELECT
    *
FROM
    tb_produtos
WHERE
    valor > 100;

-- Retorna todos os produtos com valores entre R$:70,00 e R$:150,00
SELECT
    *
FROM
    tb_produtos
WHERE
    valor BETWEEN 70 AND 150;

-- Retorna todos os produtos que possuem a leta "c" no nome
SELECT
    *
FROM
    tb_produtos
WHERE
    nome LIKE "%c%";

-- Retorna todos os dados da tabela produtos e categorias
SELECT
    tb_produtos.id,
    nome,
    valor,
    fornecedor,
    categoria,
    descricao
FROM
    tb_produtos
    INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

-- Retorna todos os itens da tabela produtos e categorias filtrado pela categoria hidraulica
SELECT
    tb_produtos.id,
    nome,
    valor,
    fornecedor,
    categoria,
    descricao
FROM
    tb_produtos
    INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
    WHERE categoria = "hidraulica";
-- Cria o banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Seleciona o banco de dados
USE db_curso_da_minha_vida;

-- Cria a tabela categoria
CREATE TABLE
    tb_categorias (id BIGINT AUTO_INCREMENT PRIMARY KEY, categoria VARCHAR(100), descricao VARCHAR(150));

-- Cria a tabela cursos
CREATE TABLE
    tb_cursos (
        id BIGINT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100),
        carga_horaria VARCHAR(20),
        preco DECIMAL(6, 2),
        id_categoria BIGINT,
        Foreign Key (id_categoria) REFERENCES tb_categorias (id)
    );

-- Adiciona as categorias
INSERT INTO
    tb_categorias (categoria, descricao)
VALUES
    ('Tecnologia', 'Cursos voltados para informática e programação'),
    ('Negócios', 'Cursos de gestão, administração e empreendedorismo'),
    ('Idiomas', 'Cursos de línguas estrangeiras'),
    ('Design', 'Cursos de design gráfico e UX/UI'),
    ('Marketing', 'Cursos de marketing digital e comunicação');

-- Adiciona os cursos
INSERT INTO
    tb_cursos (nome, carga_horaria, preco, id_categoria)
VALUES
    ('Introdução à Programação', '40h', 499.90, 1),
    ('Banco de Dados SQL', '60h', 699.90, 1),
    ('Gestão de Projetos', '50h', 599.90, 2),
    ('Empreendedorismo Digital', '30h', 399.90, 2),
    ('Inglês Básico', '80h', 799.90, 3),
    ('Espanhol Intermediário', '60h', 699.90, 3),
    ('Design Gráfico com Photoshop', '45h', 549.90, 4),
    ('Marketing Digital para Redes Sociais', '35h', 449.90, 5);

-- Seleciona todos os cursos com valor superior a R$:500,00
SELECT
    *
FROM
    tb_cursos
WHERE
    preco > 500;

-- Seleciona todos os cursos com o valor entre R$:600,00 e R$1000,00
SELECT
    *
FROM
    tb_cursos
WHERE
    preco BETWEEN 600 AND 1000;

SELECT
    *
FROM
    tb_cursos
WHERE
    nome LIKE "%j%";

-- Retorna a tabela com todos os cursos e suas respectivas categorias
select
    tb_cursos.id,
    nome,
    carga_horaria,
    preco,
    categoria,
    descricao
FROM
    tb_cursos
    INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id;

-- selecionatodos os itens da tabela cursos e categorias filtrada pelo curso de ingles
select
    tb_cursos.id,
    nome,
    carga_horaria,
    preco,
    categoria,
    descricao
FROM
    tb_cursos
    INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id
    WHERE nome like "%ingles%";
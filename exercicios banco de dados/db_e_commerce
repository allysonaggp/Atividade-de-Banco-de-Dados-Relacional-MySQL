# Cria banco de dados do E-Commerce
CREATE DATABASE db_e_commerce;
# Seleciona o banco de dados
USE db_e_commerce;
#Cria a tabela de Produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    categoria VARCHAR(50),
    observacao VARCHAR(255),
    valor DECIMAL(9, 2)
);
# Adiciona 5 produtos a tabela
INSERT INTO tb_produtos (nome, categoria, observacao, valor)
VALUES (
        "Camiseta Básica Algodão",
        "Vestuário",
        "Disponível em várias cores e tamanhos",
        49.90
    );
INSERT INTO tb_produtos (nome, categoria, observacao, valor)
VALUES (
        "Moto elétrica de 7000w",
        "Eletrônicos",
        "Bateria com duração de até 300km",
        12000.00
    );
INSERT INTO tb_produtos (nome, categoria, observacao, valor)
VALUES (
        "Garrafa Térmica Inox 500ml",
        "Casa & Cozinha",
        "Mantém líquidos quentes por 8h",
        89.90
    );
INSERT INTO tb_produtos (nome, categoria, observacao, valor)
VALUES (
        "Livro O Poder do Hábito",
        "Livros",
        "Best-seller internacional",
        59.90
    );
INSERT INTO tb_produtos (nome, categoria, observacao, valor)
VALUES (
        "Jaqueta Motociclista Daynese",
        "Acessórios",
        "Jaqueta de corrida de moto",
        2500.00
    );
# Pesquisa todos os produtos com o Valor maior que R$:500.00
SELECT *
FROM tb_produtos
WHERE valor > 500;
# Pesquisa todos os produtos com o Valor menor que R$:500.00
SELECT *
FROM tb_produtos
WHERE valor < 500;
# Alerar o dado do registro do "valor" do "id 4"
UPDATE tb_produtos
set valor = 80.54
WHERE id = 4
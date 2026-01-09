# Criar o banco de dados do RH da Empresa
CREATE DATABASE db_rh_empresa;

# Selecionar o banco de dados 
USE db_rh_empresa;

# Criar tabela de Colaboladores
CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cpf VARCHAR(20),
RG VARCHAR(20),
endereco VARCHAR(255),
salario DECIMAL(6,2)
);

# Retorna uma pesquisa com a tabela colaboradores
SELECT*FROM tb_colaboradores;

# Adiciona os dados dos Colaboradores
INSERT INTO tb_colaboradores (nome,cpf,rg,endereco,salario)
VALUES ("joão silva",12345678901,456789123,"Rua das Flores, 120 - Recife/PE",3500.00);
INSERT INTO tb_colaboradores (nome,cpf,rg,endereco,salario)
VALUES ("maria oliveira",98765432100,789123456,"Av. Boa Viagem, 450 - Recife/PE",4200.50);
INSERT INTO tb_colaboradores (nome,cpf,rg,endereco,salario)
VALUES ("pedro santos",14725836900,741852963,"Av. Norte, 890 - Recife/PE",1900.25);
INSERT INTO tb_colaboradores (nome,cpf,rg,endereco,salario)
VALUES ("ana souza",65498732145,987456123,"Rua Sete de Setembro, 300 - Jaboatão/PE",5100.00);
INSERT INTO tb_colaboradores(nome,cpf,rg,endereco,salario)
VALUES("carlos pereira",32165498712,123789456,"Rua da Aurora, 75 - Olinda/PE",1457.00);

# Pesquisa todos os Colaboradores que tem Salário maior que R$:2000.00
SELECT * FROM tb_colaboradores WHERE salario > 2000 ORDER BY salario; 

# Pesquisa todos os Colaboradores que tem Salário menor que R$:2000.00
SELECT * FROM tb_colaboradores WHERE salario < 2000 ORDER BY salario;

# Atualizar dados colaborador "carlos pereira" para o novo ENDEREÇO: "Rua das Palmeiras, 215 – Bairro Boa Vista, Recife/PE"
UPDATE tb_colaboradores set endereco="Rua das Palmeiras, 215 – Bairro Boa Vista, Recife/PE" WHERE id=5;

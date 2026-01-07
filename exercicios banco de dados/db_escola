#Cria o banco de dados da Escola
CREATE DATABASE db_escola;

# Seleciona o banco de dados
USE db_escola;

# Cria a tabela estudantes
CREATE TABLE tb_estudantes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
materia VARCHAR(50),
nota DECIMAL(3,1),
turno VARCHAR(20)
);

# Insere os dados dos alunos na tabela
INSERT INTO tb_estudantes (nome,materia,nota,turno)
VALUES ("Ana Beatriz Lima","Matemática",8.5,"Manhã");
INSERT INTO tb_estudantes (nome,materia,nota,turno)
VALUES ("João Pedro Ferreira","História",7.2,"Tarde");
INSERT INTO tb_estudantes (nome, materia,nota,turno)
VALUES ("Camila Souza Rocha","Biologia",9.0,"Noite");
INSERT INTO tb_estudantes (nome,materia,nota,turno)
VALUES ("Lucas Andrade Santos","Física",6.8,"Manhã");
INSERT INTO tb_estudantes (nome,materia,nota,turno)
VALUES ("Mariana Costa Alves","Geografia",8.0,"Tarde");
INSERT INTO tb_estudantes (nome,materia,nota,turno)
VALUES ("Rafael Oliveira Pinto","Química",5.9,"Noite");
INSERT INTO tb_estudantes (nome,materia,nota,turno)
VALUES ("Bruna Mendes Duarte","Português",9.3,"Manhã");
INSERT INTO tb_estudantes (nome,materia,nota,turno)
VALUES ("Felipe Ramos Nogueira","Inglês",7.7,"Tarde");

# Retorna todos os estudantes com nota maior que 7
SELECT * FROM tb_estudantes WHERE nota > 7;

# Retorna todos os estudantes com nota menor que 7
SELECT * FROM tb_estudantes WHERE nota < 7;

# Atualiza a nota do aluno "id 6" para "nota 8"
UPDATE tb_estudantes set nota = 8.0 WHERE id = 6

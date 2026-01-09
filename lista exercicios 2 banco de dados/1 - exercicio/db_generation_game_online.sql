# Cria o banco de dados da Geration game online
CREATE DATABASE db_generation_game_online;

# Seleciona o banco de dados da Geration game online
USE db_generation_game_online;

# Cria tabela de Classes
CREATE TABLE tb_classes (
id INT AUTO_INCREMENT PRIMARY KEY, 
classe VARCHAR(50),
descricao VARCHAR(50), 
constituicao BIGINT,
forca BIGINT, 
destreza BIGINT, 
agilidade BIGINT, 
inteligencia BIGINT
);

# Cria a tabela de Personagens
CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(255),
sexo VARCHAR(20),
poder_de_ataque BIGINT,
poder_de_defesa BIGINT,
classe_id INT,
FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

# Adiciona as classes dos personagens  
INSERT INTO tb_classes (classe, descricao, constituicao, forca, destreza, agilidade, inteligencia) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo', 120, 110, 70, 60, 50),
('Mago', 'Conjurador de magias poderosas', 60, 40, 70, 80, 130),
('Ladino', 'Ágil e furtivo, mestre em ataques surpresa', 80, 70, 120, 110, 90),
('Clérigo', 'Curandeiro e protetor com poderes divinos', 100, 80, 70, 60, 100),
('Arqueiro', 'Atacante à distância com precisão mortal', 90, 85, 115, 120, 80),
('Bárbaro', 'Força bruta e resistência absurda', 130, 120, 60, 70, 40),
('Paladino', 'Guerreiro sagrado que mistura combate e fé', 110, 100, 75, 65, 95),
('Druida', 'Guardião da natureza e das magias selvagens', 95, 70, 80, 85, 115),
('Assassino', 'Especialista em furtividade e ataques críticos', 75, 85, 120, 130, 90);
# Adiciona os personagens da tabela
INSERT INTO tb_personagens (nome, sexo, poder_de_ataque, poder_de_defesa, classe_id) VALUES
('Arthas', 'Masculino', 95, 80, 1),   -- Guerreiro
('Selene', 'Feminino', 85, 70, 3),    -- Ladino
('Merlin', 'Masculino', 5000, 50, 2),  -- Mago
('Elyra', 'Feminino', 75, 95, 4),     -- Clérigo
('Kael', 'Masculino', 100, 65, 5),    -- Arqueiro
('Ragnar', 'Masculino', 3000, 1500, 6),  -- Bárbaro
('Liora', 'Feminino', 80, 85, 8),     -- Druida
('Darian', 'Masculino', 1900, 1000, 7),  -- Paladino
('Calindra', 'Feminino', 115, 70, 9); -- Assassino

# Mostra todos os personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_de_ataque >2000;

# Mostra todos os personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_de_defesa BETWEEN 1000 AND 2000;

# Mostra todos os personagens que possuam a letra "C" no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

# Mostra a tabela com completa com todos os personagens e suas respectivas classes
SELECT tb_personagens.id,nome,classe,constituicao,forca,destreza,agilidade,inteligencia,poder_de_ataque,poder_de_defesa,sexo,descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.id,nome,classe,constituicao,forca,destreza,agilidade,inteligencia,poder_de_ataque,poder_de_defesa,sexo,descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id=tb_classes.id
WHERE classe = "Arqueiro";

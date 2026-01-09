# Cria o banco de dados 
CREATE DATABASE db_pizzaria_legal;

# Seleciona o banco de dados
USE db_pizzaria_legal;

# Cria a tabela tb_categorias
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(50),
descricao VARCHAR(150)
);

# Cria atabela tb_pizzas
CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(100),
tamanho VARCHAR(50),
ingredientes VARCHAR(100),
valor DECIMAL(5,2),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

# Adiciona os registros a tabela tb_categorias
INSERT INTO tb_categorias (categoria ,descricao) VALUES
('Tradicional', 'Pizzas clássicas com sabores populares'),
('Premium', 'Ingredientes especiais e combinações exclusivas'),
('Vegetariana', 'Pizzas sem carne, com vegetais frescos'),
('Doce', 'Pizzas com recheios doces e sobremesas'),
('Especial da Casa', 'Receitas exclusivas da pizzaria');

# Adiciona os registros a tabela tb_pizzas
INSERT INTO tb_pizzas (sabor,tamanho,ingredientes,valor,categoria_id) VALUES
('Calabresa', 'Grande', 'Calabresa fatiada com cebola e mussarela', 45.00, 1),
('Quatro Queijos', 'Média', 'Mistura de mussarela, gorgonzola, parmesão e provolone', 42.00, 1),
('Frango com Catupiry', 'Grande', 'Frango desfiado com catupiry cremoso', 47.00, 1),
('Camarão Premium', 'Grande', 'Camarão com molho especial e mussarela', 65.00, 2),
('Vegetariana Mix', 'Média', 'Tomate, pimentão, cebola, brócolis e azeitonas', 40.00, 3),
('Chocolate com Morango', 'Pequena', 'Chocolate derretido com pedaços de morango fresco', 35.00, 4),
('Banana com Canela', 'Pequena', 'Banana caramelizada com toque de canela', 32.00, 4),
('Pizza da Casa', 'Grande', 'Receita exclusiva com ingredientes secretos', 55.00, 5);

# Mostra todas a pizzas que tenham o valor maior que R$:45,00
SELECT * FROM tb_pizzas WHERE valor > 45;

# Mostra todas a pizzas que tem o valor entre R$:50,00 e R$:100,00
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

# Mostra todas as pizzas que tenham a letra "M" no campo sabor
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%"; 

# Mostra a tabela pizzas com suas respectivas categorias
SELECT tb_pizzas.id,sabor,tamanho,ingredientes,valor,categoria,descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id=tb_categorias.id;

# mostra a tabela com todas as pizzas doces
SELECT tb_pizzas.id,sabor,tamanho,ingredientes,valor,categoria,descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id=tb_categorias.id
WHERE categoria= "Doce";

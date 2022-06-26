CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    nome VARCHAR (255) NOT NULL,
    categoria VARCHAR (255) NOT NULL,
   
    PRIMARY KEY (id)

) ;
CREATE TABLE tb_personagens (
		id BIGINT auto_increment,
        habilidade VARCHAR (255),
        descricao TEXT,
        defesa BIGINT,
		ataque BIGINT,
        loucura FLOAT,
		mome_personagem VARCHAR (255),
	PRIMARY KEY (loucura),
	FOREIGN KEY (nome_personagem) REFERENCES tb_classes(nome)
   


);

DESCRIBE TABLE tb_personagens;

INSERT INTO tb_classes (nome, categoria) VALUES ("Vanessa", "Bruxa"),
("Caliban", "Frankenstein"),("Protheus","Frankenstein"),("Drácula","Vampiro"),("Ethan","Lobisomem"),("Lúcifer","Demônio");

INSERT INTO tb_personagens (habilidade,descricao,defesa,ataque,loucura) VALUES ("psiquicos","As do dia são bruxas que usam magia para parar o mal e proteger a humanidade." "1700", "1600", "1.0"),
("imortalidade","Os seres humanos reanimados são imortais, grande força e podem sobreviver à maioria das feridas, mas podem ser mortos com uma bala no cérebro. Seus corpos também são extremamente frios. Devido a mudanças de humor, eles podem se tornar perigosos e imprevisíveis, desencadeando sua raiva sobre os vivos.","1900","1905","1.9"),
("velocidade","A única maneira de matar um vampiro é ferindo a cabeça ou o coração, mas o crucifixo os repele.","2000","2000","1.0"),
("super força","Esses híbridos têm força, agilidade e resistência incríveis, com armas de prata sendo uma das poucas maneiras de machucá-los. Suas garras podem rasgar carne e suas presas caninas são capazes de esmagar ossos.","2000","1999","1.0"),
("manipulação"," Os escolhidos pelos demônios são assombrados por visões e bombardeados por tentações até que finalmente cedem. A posse não é um estado permanente, mas é desencadeada pelo pecado, especialmente pelo comportamento sexual. Os possuídos por demônios têm olhos brancos leitosos, exibem incrível força e agilidade, podem manipular objetos com suas mentes e levitar","2000","1500","2.0");

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT defesa
FROM tb_personagens
WHERE defesa BETWEEN 1000 AND 2000
ORDER BY id, nome, defesa;

SELECT ataque
FROM tb_personagens
WHERE ataque >= 2000
ORDER BY id, nome, ataque;
 
 SELECT nome
 FROM tb_classes
 WHERE nome LIKE '%c%'
 ORDER BY id, nome;
 
 SELECT nome
FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.nome = tb_personagens.nome;
 SELECT nome
FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.nome = tb_personagens.nome WHERE categoria = 'bruxa';
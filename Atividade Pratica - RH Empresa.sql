-- criar um database novo
CREATE DATABASE db_empresa;

-- Usa o database
USE db_empresa;

-- CRIAR A TABELA DE PRODUTOS
CREATE TABLE rh_funcionarios(
    id BIGINT AUTO_INCREMENT,
    colaborador VARCHAR(255) NOT NULL,
    area VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    dataadmissao DATE,
    salario DECIMAL(6,2) NOT NULL, -- Ex.: 999.999,99
    PRIMARY KEY (id)
);
-- Dados da Tabela 
INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Lucas Vinicius", "Analista Pleno", "Operações", "2018-09-03", 5000);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Maristela Cristina", "Assistente 3", "Reclame aqui", "2018-11-03", 3300);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Anderson Querino", "Assistente 3", "BackOffice", "2021-04-03", 3400);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Danilo Lobo", "Lider Junior", "BackOffice", "2020-02-15", 1800);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Edna Maria", "Supervisora Pleno", "Ouvidoria", "2022-06-07", 4000);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Giovanna Mirela", "Agente 1", "Banco", "2021-10-05", 1500);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Mariane Garrote", "Assistente 3", "KYC", "2022-09-03", 3000);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Alanna Nascimento", "Assistente 2", "Retencao", "2018-09-03", 3500);

INSERT INTO rh_funcionarios (colaborador, area, cargo, dataadmissao, salario)
VALUES ("Karen Franca", "Lider Pleno", "Midias", "2019-10-04", 3500);

SELECT *FROM rh_funcionarios;

SELECT * FROM rh_funcionarios WHERE salario > 2000; -- Salário maior do que 2000.
SELECT * FROM rh_funcionarios WHERE salario < 2000; -- Salário menor do que 2000.

SET SQL_SAFE_UPDATES = 0;

UPDATE rh_funcionarios SET salario = 2000 WHERE salario = 1500;

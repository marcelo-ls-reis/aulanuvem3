CREATE DATABASE pessoas_db;

CREATE TABLE pessoas (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone CHAR(11),
    data_nascimento DATE
);

INSERT INTO pessoas VALUES ('12345678901', 'João Silva', 'Rua A, 123', '99999999999', '1990-01-01');
INSERT INTO pessoas VALUES ('23456789012', 'Maria Santos', 'Rua B, 456', '88888888888', '1991-02-02');
INSERT INTO pessoas VALUES ('34567890123', 'Paulo Fernandes', 'Rua C, 789', '77777777777', '1992-03-03');
INSERT INTO pessoas VALUES ('45678901234', 'Julia Carvalho', 'Rua D, 012', '66666666666', '1993-04-04');
INSERT INTO pessoas VALUES ('56789012345', 'Roberto Alves', 'Rua E, 345', '55555555555', '1994-05-05');
INSERT INTO pessoas VALUES ('67890123456', 'Camila Costa', 'Rua F, 678', '44444444444', '1995-06-06');
INSERT INTO pessoas VALUES ('78901234567', 'Leonardo Barbosa', 'Rua G, 901', '33333333333', '1996-07-07');
INSERT INTO pessoas VALUES ('89012345678', 'Isabela Pereira', 'Rua H, 234', '22222222222', '1997-08-08');
INSERT INTO pessoas VALUES ('90123456789', 'Marcos Ribeiro', 'Rua I, 567', '11111111111', '1998-09-09');
INSERT INTO pessoas VALUES ('01234567890', 'Fernanda Rocha', 'Rua J, 890', '00000000000', '1999-10-10');

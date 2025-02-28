CREATE DATABASE DBAcademia;

USE DBAcademia;

-- Tabela: Funcionario
CREATE TABLE Funcionario (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    usuario VARCHAR(50) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Tabela: Alunos
CREATE TABLE Aluno (
    idAluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    data_matricula DATE NOT NULL
);

-- Tabela: Treinos
CREATE TABLE Treino (
    idTreino INT AUTO_INCREMENT PRIMARY KEY,
    idAluno INT NOT NULL,
    descricao TEXT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno)
);

-- Tabela: Pagamentos
CREATE TABLE Pagamento (
    idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    idAluno INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor decimal NOT NULL,
    FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno)
);


-- Testes

USE DBAcademia;

select *
from aluno;

select *
from funcionario;

select *
from pagamento;

select *
from treino;


select idAluno, nome, idade, telefone, email, data_matricula 
from aluno 
except 
select A.idAluno, A.nome, A.idade, A.telefone, A.email, A.data_matricula 
from aluno as A inner join pagamento as P on A.idAluno = P.idAluno;


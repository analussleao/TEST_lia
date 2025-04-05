CREATE TABLE Escolas (
    Id INT PRIMARY KEY,
    Nome TEXT
);

CREATE TABLE Cursos (
    Id INT PRIMARY KEY,
    Nome TEXT,
    Preco NUMERIC,
    Escola_Id INT,
    FOREIGN KEY (Escola_Id) REFERENCES Escolas(Id)
);

CREATE TABLE Estudantes (
    Id INT PRIMARY KEY,
    Nome TEXT,
    Data_Matricula DATE,
    Curso_Id INT,
    FOREIGN KEY (Curso_Id) REFERENCES Cursos(Id)
);


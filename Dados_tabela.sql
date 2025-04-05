INSERT INTO Escolas (Id, Nome)
VALUES
(8, 'Escola Alemão Alterada'),
(9, 'Escola Municipal Atualizada');

INSERT INTO Cursos (Id, Nome, Preco, Escola_Id)
VALUES
(2001, 'Alemão Infantil 1', 310.00, 8),
(2002, 'Alemão Infantil 2', 450.00, 8),
(2003, 'Alemão Básico 1 Modificado', 600.00, 8),
(2004, 'Alemão Básico 2 Atualizado', 750.00, 8),
(3001, 'Matemática 1 Alterada', 260.00, 9),
(3002, 'Artes 1 Atualizada', 370.00, 9),
(3003, 'Física Básica', 400.00, 9),
(3004, 'Química Básica', 520.00, 9);

INSERT INTO Estudantes (Id, Nome, Data_Matricula, Curso_Id)
VALUES
(1001, 'Ana', '2024-02-01', 2001),
(1002, 'Rafael', '2024-02-01', 2002),
(1003, 'Micaela', '2024-02-02', 2003),
(1004, 'Inez', '2024-02-02', 2004),
(1005, 'Luiz', '2024-02-03', 3001),
(1006, 'Mariana', '2024-02-03', 3002),
(1007, 'Julia', '2024-02-04', 3002),
(1008, 'Antonia', '2024-02-05', 3001),
(1009, 'Carlos', '2024-02-06', 3003),
(1010, 'Fernanda', '2024-02-07', 3004),
(1011, 'Júlio', '2024-02-08', 2001),
(1012, 'Alice', '2024-02-09', 2002),
(1013, 'Gabriel', '2024-02-10', 2003),
(1014, 'Isabela', '2024-02-11', 2004);
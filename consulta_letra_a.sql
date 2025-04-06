SELECT 
    E.Nome AS Escola_Nome,
    ES.Data_Matricula,
    COUNT(ES.Id) AS Quantidade_Alunos,
    'R$ ' || TO_CHAR(SUM(C.Preco), 'FM999G999D00') AS Valor_Total_Matriculas
FROM 
        Escolas E
JOIN 
    Cursos C ON E.Id = C.Escola_Id
JOIN 
    Estudantes ES ON C.Id = ES.Curso_Id
WHERE 
    -- Filtra os cursos cujo nome começa com "data".
    C.Nome LIKE 'data%'
GROUP BY 
    -- Agrupa os dados por nome da escola e data de matrícula.
    E.Nome, ES.Data_Matricula
ORDER BY 
    ES.Data_Matricula DESC;
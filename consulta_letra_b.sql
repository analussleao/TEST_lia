-- Bloco principal da consulta que utiliza a subconsulta
SELECT
    Principal.Escola_Nome,
    Principal.Data_Matricula,
    Principal.Soma_Alunos_Por_Dia,
    
    CONCAT('R$ ', TO_CHAR(Principal.Soma_Preco_Cursos, 'FM999G999D00')) AS Soma_Preco_Cursos,
    
    -- Calcula e formata a média móvel de 7 dias 
    CONCAT('R$ ', TO_CHAR(AVG(Principal.Soma_Preco_Cursos) OVER (
        PARTITION BY Principal.Escola_Nome
        ORDER BY Principal.Data_Matricula
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ), 'FM999G999D00')) AS Media_Movel_7_Dias,
    
    -- Calcula e formata a média móvel de 30 dias
    CONCAT('R$ ', TO_CHAR(AVG(Principal.Soma_Preco_Cursos) OVER (
        PARTITION BY Principal.Escola_Nome
        ORDER BY Principal.Data_Matricula
        ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
    ), 'FM999G999D00')) AS Media_Movel_30_Dias
FROM (
    -- Subconsulta: Calcula os valores agregados por escola e data de matrícula
    SELECT
        e.Nome AS Escola_Nome,
        es.Data_Matricula,
        COUNT(es.Id) AS Soma_Alunos_Por_Dia,
        SUM(c.Preco) AS Soma_Preco_Cursos
    FROM
        Estudantes es
    INNER JOIN
        Cursos c ON es.Curso_Id = c.Id
    INNER JOIN
        Escolas e ON c.Escola_Id = e.Id
    GROUP BY
        e.Nome,
        es.Data_Matricula
) AS Principal
ORDER BY
    Principal.Escola_Nome,
    Principal.Data_Matricula;
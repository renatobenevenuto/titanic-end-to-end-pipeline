WITH Stats AS (
    SELECT 
        Pclass,
        AVG(Fare) as Avg_Fare_Class
    FROM refined_titanic
    GROUP BY Pclass
)
SELECT 
    -- CORREÇÃO AQUI: Concatenando Nome + Sobrenome
    t.FirstName || ' ' || t.LastName as Nome_Completo,
    t.Pclass,
    t.Fare,
    ROUND(s.Avg_Fare_Class, 2) as Media_Classe,
    ROUND(t.Fare / s.Avg_Fare_Class, 2) as Razao_Preco
FROM refined_titanic t
JOIN Stats s ON t.Pclass = s.Pclass
WHERE t.Fare > (s.Avg_Fare_Class * 1.5)
ORDER BY t.Fare DESC;
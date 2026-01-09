CREATE TABLE dashboard_titanic AS
SELECT 
    PassengerId,
    Survived,
    -- Recriando o nome completo para o Dashboard
    FirstName || ' ' || LastName as Nome_Completo,
    
    -- Labels de Negócio
    CASE WHEN Survived = 1 THEN 'Sobreviveu' ELSE 'Não Sobreviveu' END as Status,
    
    Pclass,
    CASE 
        WHEN Pclass = 1 THEN '1ª Classe - Elite'
        WHEN Pclass = 2 THEN '2ª Classe - Média'
        ELSE '3ª Classe - Operária' 
    END as Classe_Descritiva,
    
    Sex,
    Age,
    CASE 
        WHEN Age < 18 THEN 'Menor de Idade'
        ELSE 'Adulto' 
    END as Faixa_Etaria,
    
    FamilySize,
    Fare
FROM refined_titanic;
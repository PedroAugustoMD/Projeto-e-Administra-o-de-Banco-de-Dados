CREATE OR REPLACE FUNCTION calcularIdade () 
    RETURNS TABLE (
        codigo int,
        idade INTEGER
) 
AS $$
BEGIN
   RETURN QUERY
   SELECT 
        f.codigo, 
        cast(EXTRACT (YEAR FROM AGE(CURRENT_DATE, f.datanasc)) as integer)
   FROM funcionario f;
END; $$ 

LANGUAGE 'plpgsql';

SELECT * FROM calcularIdade();
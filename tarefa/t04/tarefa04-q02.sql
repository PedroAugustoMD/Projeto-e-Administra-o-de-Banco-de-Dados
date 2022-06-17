CREATE OR REPLACE FUNCTION mediaPorDepartamento() 
    RETURNS TABLE (
        depto int,
        media decimal
) 
AS $$
BEGIN
   RETURN QUERY
   SELECT 
        d.codigo, 
        trunc(AVG(EXTRACT (YEAR FROM AGE(CURRENT_DATE, f.datanasc))),2)
   FROM funcionario as f, departamento as d
   WHERE f.depto = d.codigo
   GROUP BY d.codigo;
END; $$ 

LANGUAGE 'plpgsql';

SELECT * FROM mediaPorDepartamento();
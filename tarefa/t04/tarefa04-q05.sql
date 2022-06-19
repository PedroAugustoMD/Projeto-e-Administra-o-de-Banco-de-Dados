CREATE OR REPLACE FUNCTION atrasoProjeto () 
    RETURNS TABLE (
        codigo int,
        dias INTEGER
) 
AS $$
BEGIN
   RETURN QUERY
   SELECT 
        p.codigo, 
        p.dataFim - CURRENT_DATE
   FROM projeto p where p.situacao != 'Concluído';
END; $$ 

LANGUAGE 'plpgsql';

SELECT * FROM atrasoProjeto();
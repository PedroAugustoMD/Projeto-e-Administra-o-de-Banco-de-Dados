CREATE OR REPLACE FUNCTION atrasoAtividade () 
    RETURNS TABLE (
        codigo int,
        dias INTEGER
) 
AS $$
BEGIN
   RETURN QUERY
   SELECT 
        a.codigo, 
        a.dataFim - CURRENT_DATE
   FROM atividade a where situacao != 'Concluído';
END; $$ 

LANGUAGE 'plpgsql';

SELECT * FROM atrasoAtividade();
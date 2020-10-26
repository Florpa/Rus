---Esta funcion recibe como parametro el mes, el dia de la semana (nombre), la fanja horaria deseada, la categoria comerial y el valor del ponderador
--para asignar a demanda los valores que se requieran.


CREATE OR REPLACE FUNCTION transitabilidad.actualiza_ponderador
(mes int,nombre_dia text,franja int,categoria text, ponderador float)
RETURNS TABLE (cantidad int) AS $func$
BEGIN
EXECUTE (
'update 
transitabilidad.ponderadores_por_actividad
SET POND= '||ponderador||' 
 where mes = '||mes||' and lower(dia_semana_nombre)= '''||nombre_dia||'''
	and franja= '||franja||' and lower(categoria)= '''||categoria||''' '
	
)
;
RETURN query execute ('select count(*)::int as cantidad from transitabilidad.ponderadores_por_actividad where POND is not null;')
;

END
$func$ LANGUAGE plpgsql;

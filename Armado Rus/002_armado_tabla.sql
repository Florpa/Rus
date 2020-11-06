/*Esta tabla lo que hace es armar un calendario, por dia y franja horaria para poder asignarle a posterios un 
ponderador. La estructura de la tabla final esta adjunta en un .png*/
create table public.calendario_actividades_ponderadores as 
with
calendario as(
			SELECT pk_fecha, dia_semana, 
			        dia_semana_nombre,dia, mes,feriado,cuatrimestre, trimestre
            FROM public.calendario_2020
            order by fecha),
franjas_horarias as (
            select franja,descripcion
            from 
           public.franjas_horarias
            order by franja),
comercios as (
            select distinct (categoria), null::float as pond
            from public.comercios_clasificados_rus)
					

select * 
from calendario,
franjas_horarias,comercios
where categoria not in ('en_obra','S/D','comercial_neg')
order by pk_fecha,franja, categoria
BUENAS COMO VA? 
SI ESTAS LEYENDO ESTO ES PORQUE RETOMARÁS/USARAS COMO MODELO, O AL MENOS TE SERVIRÁ COMO ANTECEDENTE LO QUE REALICE ENTORNO A LA ACTUALIZACIÓN DE RUS.
TE DESEO SUERTE Y QUE NO DECAIGA (っ ͡❛ ͜ʖ ͡❛)っ🎔
TE CUENTO UN POCO QUE VAS A ENCONSTRARTE ACÁ:
*001_clasificacion_actividades*: CONTIENE UN DICCIONARIO CON LAS DISTINTAS RAMAS  DE ACTIVIDADES QUE APARECEN EN EL RUS. A CADA ACTIVIDAD SE LA CLASIFICO 
SEGUN SU ACTIVIDAD. EN CASO DE AGREGAR UN RUBRO O QUERER INCLUIR UNA RAMA DENTRO DE UNA ACTIVIDAD YA EXISTENTE, SOLO DEBES HACER UN APPEND EN EL DICCIONARIO.
ADEMÁS DE CLASIFICAR LAS ACTIVIDADES, LA FUNCIÓN CREA UNA TABLA EN Postgres (tené en cuenta de cambiar los datos de conexión). Esta tabla tendra el id del elemento,
y su clasificacion. Este id sirve a posterior para volver a vincularlo con la tabla rus original y traer, por ejemplo su X E Y.

*002_armado_tabla*: CON ESTA QUERY  CONSTRUIS LA TABLA DESAGREGADA POR MES, DIA DE LA SEMANA, FRANJA HORARIA Y TIPO LA DE ACTIVIDAD, QUE LUEGO USARAS PARA ASIGNARLES 
PONDERADORES. 

*003_ponderadores_rus*: ES UNA FUNCION DE POSTGRES, QUE TE PERMITE ASIGNAR LOS PONDERADORES A DEMANDA.ACTUALIZA LA TABLA ANTES MENCIONADA, CON EL VALOR DE PONDERADOR
QUE SE ELIJA PARA LA ACTIVIDAD. Los parametros que deben pasarsele son: *mes int,
                                                                        *nombre_dia text, 
                                                                        *franja int,
                                                                        *categoria comercial text, 
                                                                        *ponderador float).

Aún no se definio si se construiran los ponderadores en base a un criterio particular, si se utilizarán los anteriores, etc.
Las tablas auxuliares (calendarios, franjas horarias,etapas de la cuarentena, zonas y corredores comerciales inhabilitados) se encuentran en el esquema
Transitabilidad en el POSTGRES compartido.

Aún  (26/10/2020)no he vinculado estos resultados con las calles con el indicador sube, en caso que se realice agregare las consideraciones 7 querys pertinentes.


Espero no haber sido abrumadora. Intente ser lo mas clara y concreta posible. 
Si tenés dudas me podes escribir a florasolpalacio@gmail.com.

Exitos y buena vida (✿ ͡❛ ͜ʖ ͡❛)!!








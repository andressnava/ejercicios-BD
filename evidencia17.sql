/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 17*/

/* Realice una consulta donde se indique por cada grupo la lista de actividades que ha realizado en el
    campamento, Mostrando la siguiente información: Grupo, Subgrupo, Color, Categoria del subgrupo, Nombre de la actividad,
    Nivel de la actividad, puntuacion obtenida, monitor y campista responsable de la actividad*/

SELECT a.id_gru AS 'Grupo', a.id_sub AS 'Subgrupo', color_gru AS 'Color', categoria_sub AS 'Categoria subgrupo', a.nombre_act AS 'Nombre actividad',
		nivel_act AS 'Nivel actividad', puntuacion AS 'Puntuación', rtrim(nombre_mon) + ' ' + rtrim(apellidos_mon) AS 'Monitor', rtrim(nombre_cam) + ' ' + rtrim(apellidos_cam) AS 'Campista responsable'
		FROM subgrupos_actividades AS a
		INNER JOIN subgrupos AS b ON a.id_gru = b.id_gru AND a.id_sub = b.id_sub
		INNER JOIN actividades AS c ON  a.nombre_act = c.nombre_act
		INNER JOIN grupos AS d ON a.id_gru = d.id_gru
		INNER JOIN monitor_actividades AS e ON a.nombre_act = e.nombre_act
		INNER JOIN monitores AS f ON e.dni_mon = f.dni_mon
		INNER JOIN campistas AS g ON a.id_cam = g.id_cam

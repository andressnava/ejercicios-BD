/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 14*/

/* Considerando las tablas que se generaron en la evidencia 5 "Campamento" (Campistas, Grupo,
    Subgrupo, Tiendas, Monitor, etc.). 
    Genere una consulta donde se despliegue la siguiente 
    información: Identificación, Nombre Completo, edad y direccion del campista (calle), Grupo
    y Subgrupo al que fue asignado, número de tienda e identificación y nombre del monitor*/

SELECT id_cam, trim(nombre_cam) + ' ' + rtrim(apellidos_cam) as 'Nombre de campista', calle_cam, 
		a.id_gru, a.id_sub, id_res, id_tie, dni_mon, rtrim(nombre_mon) + ' ' + rtrim(apellidos_mon) as 'Nombre del monitor'
		FROM campistas as a
		INNER JOIN subgrupos as b ON a.id_sub = b.id_sub and a.id_gru = b.id_gru
		INNER JOIN monitores as c ON a.id_gru = c.id_gpo 


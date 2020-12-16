/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Evidencia 13*/

/* Realiza una consulta a la tabla de Campistas obteniendo el total
    de campistas agrupados por Grupo-Subgrupo. Que se despliegue el 
    Grupo, Subgrupo y el número de campistas */

SELECT id_gru, id_sub, count(*) AS 'Número de campistas' FROM campistas 
	GROUP BY id_gru, id_sub

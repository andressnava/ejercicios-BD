/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 23*/

/*Defina un procedimiento en sql que regrese la siguiente información por cada grupo-subgrupo
    El color, lema del grupo y el número de puntos obtenidos en las actividades realizadas dentro del campamento,
    ordenando la información de la menor a mayor puntuación*/


/*Creando procedimiento*/

CREATE PROCEDURE gru_sub_pun
	AS
	BEGIN
	SELECT a.id_gru, id_sub, color_gru, lema_gru, SUM(puntuacion) AS Puntuacion_total FROM subgrupos_actividades AS a
		INNER JOIN grupos AS b ON a.id_gru = b.id_gru
		GROUP BY a.id_gru, id_sub, color_gru, lema_gru
		ORDER BY Puntuacion_total ASC
	END


/*Ejecutando el procedimiento*/
EXEC gru_sub_pun

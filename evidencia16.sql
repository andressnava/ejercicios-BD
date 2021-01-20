/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 16*/

/* Genere una consulta donde se desplieguen por cada grupo el número de campistas asignados.
    Desplegando grupo, color y numero de campistas*/

SELECT a.id_gru AS 'Grupo', color_gru AS 'Color', count(*) '# Campistas' FROM campistas AS a
INNER JOIN grupos AS b ON a.id_gru = b.id_gru
GROUP BY a.id_gru, color_gru




/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 18*/

/*Realice una consulta donde se despliegue en orden alfabético los nombres de todas las personas en el Campamento (Campistas y Monitores) */

SELECT rtrim(nombre_cam) + ' ' + rtrim(apellidos_cam) AS 'Nombre completo' FROM campistas
UNION ALL
SELECT rtrim(nombre_mon) + ' ' + rtrim(apellidos_mon) FROM monitores
ORDER BY 'Nombre completo'
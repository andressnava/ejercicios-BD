/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Evidencia 10*/

/*Realiza una consulta a la tablas campistas obteniendo de salida la 
    información: Identificación, Nombre, Apellidos, Calle, Edad, Grupo y subgrupo al que pertenece
*/

SELECT id_cam, nombre_cam, apellidos_cam, calle_cam, edad_cam, id_gru, id_sub FROM campistas
		WHERE edad_cam >= 13 AND edad_cam <=16

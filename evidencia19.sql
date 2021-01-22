/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 19*/

/* Crear una vista lógica de la tabla Campistas donde se desplieguen solamente los niños y niñas del campamento; 
    con la siguiente información ID campista, Nombre Completo, Edad, Grupo y Subgrupo al que pertenece*/

/* Creando la vista*/
CREATE VIEW VISTA_CAM
(ID, NOMBRE_COMPLETO, EDAD, GRUPO, SUBGRUPO)
AS SELECT id_cam, rtrim(nombre_cam) + ' ' + rtrim(apellidos_cam), edad_cam, id_gru, id_sub
	FROM campistas
	WHERE edad_cam BETWEEN 8 AND 12


/* Mostrando la vista*/
SELECT * FROM VISTA_CAM
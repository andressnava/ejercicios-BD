/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 15*/

/* Genere una consulta donde aparezcan la Identificación, Nombre Completo y Teléfono del Campista;
    a que grupo, subgrupo y campamento pertenece; solo para los campistas que su apellido termine con
    las letras "ez"*/

SELECT id_cam, trim(nombre_cam) + ' ' + rtrim(apellidos_cam) as 'Nombre de campista', telefono_cam, a.id_gru, id_sub, b.nombre_cto
		FROM campistas as a 
		INNER JOIN grupos as b ON a.id_gru = b.id_gru
		INNER JOIN campamento as c ON b.nombre_cto = c.nombre_cto
		WHERE apellidos_cam LIKE '%EZ'

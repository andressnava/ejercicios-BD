/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 15*/

/* Genere una consulta donde aparezcan la Identificación, Nombre Completo y Teléfono del Campista;
    a que grupo, subgrupo y campamento pertenece; solo para los campistas que su apellido termine con
    las letras "ez"*/

SELECT id_cam as 'ID Campista', trim(nombre_cam) + ' ' + rtrim(apellidos_cam) as 'Nombre de campista',
		telefono_cam as 'Telefono del Campista', a.id_gru as 'Grupo', id_sub 'Subgrupo', b.nombre_cto as 'Campamento'
		FROM campistas as a 
		INNER JOIN grupos as b ON a.id_gru = b.id_gru
		INNER JOIN campamento as c ON b.nombre_cto = c.nombre_cto
		WHERE apellidos_cam LIKE '%EZ'

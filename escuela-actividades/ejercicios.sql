/*		ACTIVIDADES DE CLASE 								*/

/* 1. Generar una relación de alumnos por Carrera (clave y nombre de carrera, boleta, nombre completo del alumno) */

SELECT b.carr_cod as 'Clave Carrera', carr_nombre as 'Nombre Carrera', alu_bol as 'Boleta', 
		rtrim(alu_nombre) + ' ' + rtrim(alu_ap_p) + ' ' + rtrim(alu_ap_m) as 'Nombre Completo'
		FROM alumnos as a INNER JOIN carreras as b ON a.carr_cod = b.carr_cod
		ORDER BY a.carr_cod

/* 2. Generar una consulta donde se despliegue por cada profesor las materias que esta impartiendo (RFC, Nombre Completo,
		clave y nombre de materia)  */

SELECT a.prof_rfc, b.prof_nombre, b.prof_ap_p, b.prof_ap_m, mod_cod, mod_nombre FROM modulos as a
		INNER JOIN profesores as b ON a.prof_rfc = b.prof_rfc

/* 3. Generar una lista de materias por cada una de las carreras por semestre*/ 

SELECT mod_nombre, carr_nombre, mod_semestre FROM modulos as a INNER JOIN carreras as b ON a.carr_cod = b.carr_cod
		ORDER BY carr_nombre, mod_semestre

/* 4. Generar una consulta donde se despliegue por cada alumno las materias que este cursando*/

SELECT a.alu_bol, alu_nombre, alu_ap_p, alu_ap_m, a.mod_cod, mod_nombre FROM cursos as a 
		INNER JOIN alumnos as b ON a.alu_bol = b.alu_bol
		INNER JOIN modulos as c ON c.mod_cod = a.mod_cod
		ORDER BY a.alu_bol

/* 5. Generar una consulta donde se desplieguen todos los profesores aunque no este asignados a una materia */

SELECT a.prof_rfc as 'RFC', rtrim(prof_nombre) + ' ' +  rtrim(prof_ap_p) + ' ' +  rtrim(prof_ap_m) as 'Nombre del alumno',
		 mod_cod as 'Codigo Materia', mod_nombre as 'Materia' FROM profesores as a 
		LEFT JOIN modulos as b ON a.prof_rfc = b.prof_rfc
		ORDER BY a.prof_rfc

		/* Justificación: la resta del número de profesores y el número de profesores que imparten una materia debe de ser equivalente al número de profesores que no importan ninguna materia   */
		select count(*) from profesores
		select distinct(prof_rfc) from modulos


/* 6. Generar una consulta por alumno donde se especifique el número de materias que esta cursando cada alumno*/

SELECT cursos.alu_bol, alumnos.alu_nombre, alu_ap_p, alu_ap_m, count(*) as 'Número de Materias'
		FROM cursos INNER JOIN alumnos ON cursos.alu_bol = alumnos.alu_bol
		GROUP BY cursos.alu_bol, alumnos.alu_nombre, alu_ap_p, alu_ap_m


/* 7. Genera una consulta donde se especifique el numero de materias que tiene cada unas de las carreras por semestre*/

SELECT a.carr_cod, carr_nombre, mod_semestre, count(*) as 'Número de materias' 
		FROM modulos as a INNER JOIN carreras as b ON a.carr_cod = b.carr_cod
		GROUP BY a.carr_cod, carr_nombre, mod_semestre  
		ORDER BY carr_nombre, mod_semestre

/* 8. Genere una consulta por cada materia de la carrera de Arquitectura donde se despliegue los alumnos que la estan
		cursando*/

SELECT carr_nombre, a.mod_cod, mod_nombre, b.alu_bol, alu_nombre, alu_ap_p, alu_ap_m
		FROM modulos as a 
		INNER JOIN cursos as b ON a.mod_cod = b.mod_cod
		INNER JOIN carreras as c ON c.carr_cod = a.carr_cod
		INNER JOIN alumnos as d ON b.alu_bol = d.alu_bol
		WHERE a.carr_cod = 'A'
		ORDER BY mod_nombre

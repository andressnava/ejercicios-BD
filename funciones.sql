
/* BETWEEN*/
SELECT nombre_cam, apellidos_cam, edad_cam FROM campistas WHERE edad_cam BETWEEN 8 AND 13
		ORDER BY edad_cam


/* IN con NOT*/
SELECT nombre_cam, apellidos_cam, edad_cam FROM campistas WHERE NOT edad_cam IN (12, 13, 16)
		ORDER BY edad_cam

/* IN*/

SELECT nombre_cam, apellidos_cam, edad_cam FROM campistas WHERE edad_cam IN (12, 13, 16)
		ORDER BY edad_cam

/* min y max*/

SELECT MIN(edad_cam) AS 'Edad minima' FROM campistas

SELECT MAX(edad_cam) AS 'Edad maxima' FROM campistas
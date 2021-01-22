/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 22*/

/* Defina un procedimiento en el sql que dependiendo del grupo regrese la siguiente información:
    ID Campista, Nombre, Apellidos y Edad de los campistas que forman el grupo ordenados por apellidos*/

/* Creando procedimiento alamacenado*/
CREATE PROCEDURE info_cam_gru
	@grupo AS DECIMAL(2)
	AS
	BEGIN
		BEGIN TRY
			SELECT id_cam AS 'ID Campista', nombre_cam AS 'Nombre', apellidos_cam AS 'Apellidos', edad_cam AS 'Edad'
				FROM campistas
				WHERE id_gru = @grupo ORDER BY apellidos_cam
		END TRY
		BEGIN CATCH
			PRINT 'Se ha producido un error'
		END CATCH
	END



/*Ejecutando procedimiento*/
EXEC info_cam_gru '1'
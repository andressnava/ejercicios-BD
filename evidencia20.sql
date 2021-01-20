/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 20*/

/* Genere una transaccion donde se den de alta 2 registros a la tabla de Monitores y en caso de tener
     un error reverse la transacción */

BEGIN TRANSACTION tran_alta
	BEGIN TRY
		INSERT INTO monitores VALUES(6, 'Alfonso', 'Guzman', '2 años', 1, 'Soccer')
		INSERT INTO monitores VALUES(7, 'Facundo', 'Lopez', '5 años', 2, 'Tenis')
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		PRINT 'Existe algun error, se reverso la transaccion'
		ROLLBACK TRANSACTION
	END CATCH


/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 21*/

/* Genere una transacción que lea toda la tabla Grupos y despliegue
    Grupo, Color, Lema y Campamento al que pertenece */

BEGIN TRANSACTION leer_grupo
DECLARE @grupo DECIMAL(2), @color VARCHAR(10), @lema VARCHAR(50), @campamento VARCHAR(15)
DECLARE CurGrupo CURSOR
FOR
SELECT id_gru, color_gru, lema_gru, nombre_cto FROM grupos
OPEN CurGrupo
FETCH CurGrupo INTO @grupo, @color, @lema, @campamento
WHILE(@@FETCH_STATUS = 0)
	BEGIN
		PRINT str(@grupo) + ', ' + @color + ', ' + @lema + ', ' + @campamento
		FETCH CurGrupo INTO @grupo, @color, @lema, @campamento
	END
CLOSE CurGrupo
DEALLOCATE CurGrupo
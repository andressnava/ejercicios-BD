/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 25*/

/* La actualización de la tabla Puntos_total se hará por un trigger
    cuando se realice un insert a la tabla de subgrupos_actividades evento
    de "insercion (insert)" se actualizará el total de puntos obtenidos por el
    grupo-subgrupo*/

/*Creando tabla */
CREATE TABLE Puntos_total(
	Grupo DECIMAL(8),
	Subgrupo DECIMAL(8),
	Puntos DECIMAL(8))


/*Creando trigger */
CREATE TRIGGER punt_act ON subgrupos_actividades
	FOR INSERT
	AS
		DECLARE @gpo DECIMAL(8)
		DECLARE @sub DECIMAL(8)
		DECLARE @pts DECIMAL(8)
		SET @gpo = (SELECT id_gru FROM inserted)
		SET @sub = (SELECT id_sub FROM inserted)
		SET @pts = (SELECT SUM(puntuacion) FROM subgrupos_actividades WHERE id_gru = @gpo AND id_sub = @sub GROUP BY id_gru, id_sub)
		IF NOT EXISTS(SELECT * FROM Puntos_Total WHERE grupo = @gpo AND subgrupo = @sub)
			BEGIN
				INSERT INTO Puntos_total 
				SELECT id_gru, id_sub, SUM(puntuacion) FROM inserted GROUP BY id_gru, id_sub
			END 
		ELSE
			BEGIN
				UPDATE Puntos_total SET puntos = @pts
				WHERE grupo = @gpo and subgrupo = @sub
			END
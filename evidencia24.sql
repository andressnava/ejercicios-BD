/* Tabla */





/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Tercer parcial*/
/*Evidencia 24*/

/* Defina un trigger para la tabla Actividades para cuando se realice un
    evento de "actualizacion (update)" grabe un archivo de bitacora la
    siguiente información Nombre_act los valores anteriores y nuevos de la 
    tabla de actividades, así como la fecha y hora de la actualización*/

/* CREANDO TABLA*/
CREATE TABLE ACT_BITA(
	nombre_act VARCHAR(20) NOT NULL,
	des_ant VARCHAR(50) NOT NULL,
	nivel_ant VARCHAR(10) NOT NULL,
	des_nvo VARCHAR(50) NOT NULL,
	nivel_nvo VARCHAR(10) NOT NULL,
	fechor DATETIME NOT NULL,
	PRIMARY KEY(nombre_act, fechor))


/*Creando Trigger*/
CREATE TRIGGER upd_act ON actividades
	FOR UPDATE
	AS
		BEGIN
			INSERT INTO ACT_BITA
				SELECT d.nombre_act, d.descripcion_act, d.nivel_act, i.descripcion_act, i.nivel_act, getdate()
				FROM deleted as d INNER JOIN inserted as i ON d.nombre_act = i.nombre_act 
		END
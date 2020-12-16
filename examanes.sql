/* 1 */
CREATE TABLE subgrupo_actividades
(	id_grupo NVARCHAR(15) NOT NULL,
	id_subgrupo DECIMAL(10) NOT NULL,
	id_act DECIMAL(10) NOT NULL,
	fecha DECIMAL(8) NOT NULL,
	hora DECIMAL(6) NOT NULL,
	PRIMARY KEY(id_grupo, id_subgrupo, id_act, fecha, hora),
	FOREIGN KEY(id_grupo) REFERENCES grupos(id_grupo),
	FOREIGN KEY(id_subgrupo) REFERENCES subgrupos(id_subgrupo),
	FOREIGN KEY(id_act) REFERENCES actividades(id_act))

/* 2 */
INSERT INTO campistas(id_camp, nom_camp, edad, direccion) VALUES (1, 'Andres', 21, 'Ricardo Flores 36')

/* 3 */

SELECT * FROM subgrupo_actividades WHERE fecha LIKE '202011%' ORDER BY fecha DESC, hora DESC

/* 4*/

SELECT * FROM monitores WHERE nom_moni LIKE '%PEREZ%'

/*5*/
UPDATE actividades SET act_dif = 'BAJA' WHERE act_dif = 'FACILES'

/* 6*/
ALTER TABLE monitores ALTER COLUMN experiencia NVARCHAR(300)


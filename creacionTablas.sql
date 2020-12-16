/* Corrección quitando el incremental de las llaves*/

CREATE TABLE campamento 
(	nombre_cto char(15) not null,
	calle_cto nvarchar(30) not null,
	next_cto nvarchar(6),
	nint_cto nvarchar(6),
	colonia_cto nvarchar(30) not null,
	delegacion_cto nvarchar(30) not null,
	estado_cto nvarchar(30) not null,
	PRIMARY KEY(nombre_cto))

CREATE TABLE grupos
(	id_gru numeric(2) not null,
	color_gru varchar(10) not null,
	lema_gru varchar(50),
	nombre_cto char(15) not null,
	PRIMARY KEY(id_gru),
	FOREIGN KEY(nombre_cto) REFERENCES campamento(nombre_cto))

CREATE TABLE tiendas 
(	id_tie numeric(2) not null,
	sector_tie char(1),
	PRIMARY KEY(id_tie))


CREATE TABLE subgrupos
(	id_gru numeric(2) not null,
    id_sub numeric(2) not null,
	categoria_sub  varchar(10) not null, CHECK(categoria_sub = 'Jóvenes' or categoria_sub = 'Niños'),
	integrantes_sub numeric(1) not null, CHECK(integrantes_sub <= 5),
	id_res numeric(2),
	id_tie numeric(2) not null,
    FOREIGN KEY(id_tie) REFERENCES tiendas(id_tie),
    FOREIGN KEY(id_gru) REFERENCES grupos(id_gru),
	PRIMARY KEY(id_gru, id_sub))

CREATE TABLE campistas
(	id_cam numeric(2) not null,
	nombre_cam varchar(20) not null,
	apellidos_cam varchar(20) not null,
	calle_cam nvarchar(30) not null,
	next_cam nvarchar(6),
	nint_cam nvarchar(6),
	colonia_cam nvarchar(30) not null,
	delegacion_cam nvarchar(30) not null,
	estado_cam nvarchar(30) not null,
	telefono_cam numeric(10) not null,
	edad_cam numeric(2) not null , CHECK(edad_cam >= 8 AND edad_cam <= 16),
	id_gru numeric(2) not null,
	id_sub numeric(2) not null,
	PRIMARY KEY(id_cam),
	FOREIGN KEY(id_gru, id_sub) REFERENCES subgrupos(id_gru, id_sub))

CREATE TABLE actividades
(	nombre_act varchar(20) not null,
	descripcion_act varchar(50),
	nivel_act varchar(10) not null, CHECK(nivel_act = 'Jóvenes' OR nivel_act = 'Niños' OR nivel_act = 'Ambos'),
	PRIMARY KEY(nombre_act))

CREATE TABLE subgrupos_actividades
(	id_gru numeric(2) not null,
	id_sub numeric(2) not null,
	nombre_act varchar(20) not null,
	id_cam numeric(2) not null,
	puntuacion numeric(3) not null,
	PRIMARY KEY(id_gru, id_sub, nombre_act),
	FOREIGN KEY(id_gru, id_sub) REFERENCES subgrupos(id_gru, id_sub),
	FOREIGN KEY(nombre_act) REFERENCES actividades(nombre_act),
	FOREIGN KEY(id_cam) REFERENCES campistas(id_cam))


CREATE TABLE monitores
(	dni_mon numeric(6) not null,
	nombre_mon varchar(20) not null,
	apellidos_mon varchar(20) not null,
	experiencia_mon varchar(50),
	id_gpo numeric(2) not null,
	nombre_ac varchar(20) not null,
	PRIMARY KEY(dni_mon),
	FOREIGN KEY(id_gpo) REFERENCES grupos(id_gru),
	FOREIGN KEY(nombre_ac) REFERENCES actividades(nombre_act))




CREATE TABLE monitor_actividades
(	nombre_act varchar(20) not null,
	dni_mon numeric(6) not null,
	PRIMARY KEY(nombre_act, dni_mon),
	FOREIGN KEY(nombre_act) REFERENCES actividades(nombre_act),
	FOREIGN KEY(dni_mon) REFERENCES monitores(dni_mon))
	



CREATE TABLE campistas
(	id_cam numeric(2) not null IDENTITY,
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

CREATE TABLE actividades
(	nombre_act varchar(20) not null,
	descripcion_act varchar(50),
	nivel_act varchar(10) not null,
	PRIMARY KEY(nombre_act))
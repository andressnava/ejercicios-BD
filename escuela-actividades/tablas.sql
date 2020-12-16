create table departamentos
( dep_cod     decimal(03)  not null,
  dep_descripcion  char(50) not null,
  primary key (dep_cod))

create table carreras
( carr_cod    char(01)    not null,
  carr_nombre char(30)    not null,
  primary key (carr_cod))


create table alumnos
( alu_bol      decimal(07) not null,
  alu_nombre   char(30)    not null,
  alu_ap_p     char(30)    not null,
  alu_ap_m     char(30)    not null,
  alu_gen      Char(01)    not null,
  carr_cod     char(01)    not null,
  alu_fec_nac  decimal(08) not null,
  primary key (alu_bol),
  foreign key (carr_cod) references carreras(carr_cod))

create table profesores
( prof_rfc     char(13)  not null,
  prof_nombre  char(30)  not null,
  prof_ap_p    char(30)  not null,
  prof_ap_m    char(30)  not null,
  prof_alc_mun char(30)  not null,
  prof_cp      decimal(05) not null,
  prof_calle   char(50)  not null,
  prof_no_int  decimal(03) not null,
  prof_no_ext  decimal(03) not null,
  dep_cod      decimal(03) not null,
  primary key (prof_rfc),
  foreign key (dep_cod) references departamentos(dep_cod))

create table modulos
( mod_cod      decimal(03)  not null,
  mod_nombre   char(50)     not null,
  mod_num_cred decimal(02)  not null,
  mod_semestre decimal(01)  not null,
  carr_cod     char(01)     not null,
  prof_rfc     char(13)     not null,
  primary key (mod_cod),
  foreign key (carr_cod) references carreras(carr_cod),
  foreign key (prof_rfc) references profesores(prof_rfc))

create table cursos
( mod_cod    decimal(03)  not null,
  alu_bol    decimal(07)  not null,
  cur_cod    char(03)     not null,
  jefe_grupo char(02)     not null,
  primary key (mod_cod, alu_bol),
  foreign key (mod_cod) references modulos(mod_cod),
  foreign key (alu_bol) references alumnos(alu_bol))
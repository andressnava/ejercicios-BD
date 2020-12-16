/*Sanchez Nava Andres Guillermo */
/*Admon. BD*/
/*4NV70*/
/*Evidencia 8*/


/*Insertando una actividad*/
INSERT INTO actividades values('Soccer', 'El primero que anote gol gana', 'Ambos')


/* Primero se da de alta el campamento para dar de alta un grupo */ 
INSERT INTO campamento (nombre_cto, calle_cto, next_cto, nint_cto, colonia_cto, delegacion_cto, estado_cto)  
            VALUES ('El Coyote', 'Ricardo Flores', '345', '2', 'Campestre', 'Coyoacan', 'CDMX')

/*Insertando grupo*/
INSERT INTO grupos(id_gru, color_gru, lema_gru, nombre_cto) VALUES (1, 'Azul', 'Somos el mejor', 'El Coyote')
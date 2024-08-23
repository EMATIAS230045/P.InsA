CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarYActualizarDatosAleatorios`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE fecha DATE;

    -- Verifica que `cantidad` sea positiva
    IF cantidad <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad debe ser mayor que cero.';
    END IF;

    -- Inserta o actualiza datos en la tabla `equipos`
    WHILE i < cantidad DO
        INSERT INTO equipos (id_equipo, nombre_de_equipo)
        VALUES (
            i + 1, -- id_equipo (debe ser único y secuencial)
            CONCAT('Equipo_', FLOOR(RAND() * 10000)) -- Nombre aleatorio
        )
        ON DUPLICATE KEY UPDATE
            nombre_de_equipo = VALUES(nombre_de_equipo);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `edificios`
    WHILE i < cantidad DO
        INSERT INTO edificios (id_edificio, nombre)
        VALUES (
            i + 1, -- id_edificio (debe ser único y secuencial)
            CONCAT('Edificio_', FLOOR(RAND() * 10000)) -- Nombre aleatorio
        )
        ON DUPLICATE KEY UPDATE
            nombre = VALUES(nombre);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `horarios`
    WHILE i < cantidad DO
        INSERT INTO horarios (id_horarios, fecha, hora, num_equipo)
        VALUES (
            i + 1, -- id_horarios (debe ser único y secuencial)
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria dentro del último mes
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')), -- Hora aleatoria en formato HH:MM
            FLOOR(RAND() * cantidad) + 1 -- num_equipo aleatorio (dentro del rango de equipos insertados)
        )
        ON DUPLICATE KEY UPDATE
            fecha = VALUES(fecha),
            hora = VALUES(hora),
            num_equipo = VALUES(num_equipo);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `usuarios`, excluyendo el rol `administrador`
    WHILE i < cantidad DO
        INSERT INTO usuarios (id_usuario, Nombre, Telefono, Rol, correo, contraseña, id_horariosp, num_equipo, matricula)
        VALUES (
            i + 1, -- id_usuario (debe ser único y secuencial)
            CONCAT('Usuario_', FLOOR(RAND() * 10000)), -- Nombre aleatorio
            CONCAT('+34', LPAD(FLOOR(RAND() * 100000000), 9, '0')), -- Teléfono aleatorio
            CASE 
                WHEN RAND() < 0.5 THEN 'lider'
                ELSE 'integrante'
            END, -- Rol aleatorio, excluyendo 'administrador'
            CONCAT('usuario_', FLOOR(RAND() * 10000), '@example.com'), -- Correo electrónico aleatorio
            CONCAT('contraseña_', FLOOR(RAND() * 10000)), -- Contraseña aleatoria
            FLOOR(RAND() * cantidad) + 1, -- id_horariosp aleatorio (dentro del rango de horarios insertados)
            FLOOR(RAND() * cantidad) + 1, -- num_equipo aleatorio (dentro del rango de equipos insertados)
            FLOOR(RAND() * 1000) -- Matrícula aleatoria
        )
        ON DUPLICATE KEY UPDATE
            Nombre = VALUES(Nombre),
            Telefono = VALUES(Telefono),
            Rol = VALUES(Rol),
            correo = VALUES(correo),
            contraseña = VALUES(contraseña),
            id_horariosp = VALUES(id_horariosp),
            num_equipo = VALUES(num_equipo),
            matricula = VALUES(matricula);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `asistencias`
    WHILE i < cantidad DO
        SET fecha = CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY; -- Fecha aleatoria dentro del último mes
        
        INSERT INTO asistencias (estado, fecha, nombres, matricula, num_equipop, area, hora)
        VALUES (
            CASE 
                WHEN RAND() < 0.5 THEN 'presente'
                ELSE 'ausente'
            END, -- Estado aleatorio
            fecha, -- Fecha aleatoria
            CONCAT('Nombre_', FLOOR(RAND() * 10000)), -- Nombre aleatorio
            CONCAT('M_', FLOOR(RAND() * 10000)), -- Matrícula aleatoria
            FLOOR(RAND() * cantidad) + 1, -- num_equipop aleatorio (dentro del rango de equipos insertados)
            CONCAT('Área_', FLOOR(RAND() * 100)), -- Área aleatoria
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')) -- Hora aleatoria en formato HH:MM
        )
        ON DUPLICATE KEY UPDATE
            estado = VALUES(estado),
            fecha = VALUES(fecha),
            nombres = VALUES(nombres),
            matricula = VALUES(matricula),
            num_equipop = VALUES(num_equipop),
            area = VALUES(area),
            hora = VALUES(hora);
        SET i = i + 1;
    END WHILE;

    -- Reinicia el índice para la siguiente inserción
    SET i = 0;

    -- Inserta o actualiza datos en la tabla `bitacora`
    WHILE i < cantidad DO
        INSERT INTO bitacora (matricula_equipo, agua, papel, plastico, id_edificiop, fecha, id_usuario)
        VALUES (
            FLOOR(RAND() * cantidad) + 1, -- matricula_equipo aleatorio (dentro del rango de equipos insertados)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Agua (0 o 1 aleatorio)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Papel (0 o 1 aleatorio)
            CASE 
                WHEN RAND() < 0.5 THEN 1
                ELSE 0
            END, -- Plástico (0 o 1 aleatorio)
            FLOOR(RAND() * cantidad) + 1, -- id_edificiop aleatorio (dentro del rango de edificios)
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria
            FLOOR(RAND() * cantidad) + 1 -- id_usuario aleatorio (dentro del rango de usuarios insertados)
        )
        ON DUPLICATE KEY UPDATE
            agua = VALUES(agua),
            papel = VALUES(papel),
            plastico = VALUES(plastico),
            id_edificiop = VALUES(id_edificiop),
            fecha = VALUES(fecha),
            id_usuario = VALUES(id_usuario);
        SET i = i + 1;
    END WHILE;

END
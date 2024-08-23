CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarYActualizarUsuarios`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE equipo_id INT;
    DECLARE horario_id INT;

    -- Verifica que `cantidad` sea positiva
    IF cantidad <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad debe ser mayor que cero.';
    END IF;

    -- Inserta o actualiza datos en `equipos` y `horarios`
    WHILE i < cantidad DO
        -- Genera un ID aleatorio para el equipo
        SET equipo_id = FLOOR(RAND() * cantidad) + 1;

        -- Verifica si el equipo ya existe, si no, lo crea
        INSERT IGNORE INTO equipos (id_equipo, nombre_de_equipo)
        VALUES (equipo_id, CONCAT('Equipo_', FLOOR(RAND() * 10000)));

        -- Genera un ID aleatorio para el horario
        SET horario_id = FLOOR(RAND() * cantidad) + 1;

        -- Verifica si el horario ya existe, si no, lo crea
        INSERT IGNORE INTO horarios (id_horarios, fecha, hora, num_equipo)
        VALUES (
            horario_id, 
            CURDATE() - INTERVAL FLOOR(RAND() * 30) DAY, -- Fecha aleatoria dentro del último mes
            CONCAT(LPAD(FLOOR(RAND() * 24), 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0')), -- Hora aleatoria en formato HH:MM
            equipo_id -- num_equipo aleatorio
        );

        -- Inserta o actualiza usuarios
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
            horario_id, -- id_horariosp aleatorio
            equipo_id, -- num_equipo aleatorio
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

END
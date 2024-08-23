CREATE DEFINER=`root`@`localhost` TRIGGER `ActualizarRegistrosDespuésDeInsertar` AFTER INSERT ON `usuarios` FOR EACH ROW BEGIN
    -- Inserta un registro en la tabla de registros
    INSERT INTO registros (accion, tabla_afectada, registro_id, fecha)
    VALUES ('INSERTAR', 'usuarios', NEW.id_usuario, NOW());
END
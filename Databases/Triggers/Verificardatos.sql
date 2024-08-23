CREATE DEFINER=`root`@`localhost` TRIGGER `VerificarDatosAntesDeInsertar` BEFORE INSERT ON `usuarios` FOR EACH ROW BEGIN
    -- Verifica si el num_equipo existe en la tabla equipos
    IF NOT EXISTS (SELECT 1 FROM equipos WHERE id_equipo = NEW.num_equipo) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El num_equipo referenciado no existe en la tabla equipos.';
    END IF;

    -- Verifica si el id_horariosp existe en la tabla horarios
    IF NOT EXISTS (SELECT 1 FROM horarios WHERE id_horarios = NEW.id_horariosp) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El id_horariosp referenciado no existe en la tabla horarios.';
    END IF;
END
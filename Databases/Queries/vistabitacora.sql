    SELECT 
        `u`.`id_usuario` AS `usuario_id`,
        `u`.`Nombre` AS `nombre_usuario`,
        `u`.`Telefono` AS `telefono_usuario`,
        `u`.`Rol` AS `rol_usuario`,
        `u`.`correo` AS `correo_usuario`,
        `u`.`matricula` AS `matricula_usuario`,
        `e`.`nombre_de_equipo` AS `nombre_equipo`,
        `h`.`fecha` AS `fecha_horario`,
        `h`.`hora` AS `hora_horario`,
        `r`.`fecha` AS `fecha_registro`
    FROM
        (((`usuarios` `u`
        LEFT JOIN `equipos` `e` ON ((`u`.`num_equipo` = `e`.`id_equipo`)))
        LEFT JOIN `horarios` `h` ON ((`u`.`id_horariosp` = `h`.`id_horarios`)))
        LEFT JOIN `registros` `r` ON (((`u`.`id_usuario` = `r`.`registro_id`)
            AND (`r`.`tabla_afectada` = 'usuarios'))))
    ORDER BY `u`.`id_usuario`
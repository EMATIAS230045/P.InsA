<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asignación de Horarios</title>
    <link rel="stylesheet" href="../CSS/hora.css">
</head>
<body>
    <div class="schedule-container">
        <h2>Asignación de Horarios</h2>
        <form id="scheduleForm" method="post" action="load_schedule.php">
            <?php
            include "../BD/conex.php";
            include "load_schedule.php";
            ?>
            <div class="input-group">
                <label for="employee">Empleado:</label>
                <select id="employee" name="employee" required>
                    <option value="lider1">Líder 1</option>
                    <option value="lider2">Líder 2</option>
                    <option value="lider3">Líder 3</option>
                </select>
            </div>
            <div class="input-group">
                <label for="team">Equipo:</label>
                <select id="team" name="team" required>
                    <option value="1">Equipo 1</option>
                    <option value="2">Equipo 2</option>
                    <option value="3">Equipo 3</option>
                </select>
            </div>
            <div class="input-group">
                <label for="startDate">Fecha:</label>
                <input type="date" id="startDate" name="startDate" required>
            </div>
            <div class="input-group">
                <label for="startTime">Hora:</label>
                <input type="time" id="startTime" name="startTime" required>
            </div>
            <button type="submit" class="submit-button">Asignar Horario</button>
        </form>
        <a href="../menu.php"><button type="button" class="submit-button">Regresar</button></a>
        <div id="scheduleList" class="schedule-list">
            <h3>Horarios Asignados</h3>
            <ul id="list"></ul>
        </div>
    </div>
    <script src="../JS/hora.js"></script>
</body>
</html>

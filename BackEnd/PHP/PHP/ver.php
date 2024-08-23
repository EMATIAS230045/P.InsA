<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Asistencias</title>
    <link rel="stylesheet" href="../CSS/asistencia.css"> <!-- Ruta al CSS -->
</head>
<body>
    <div class="container">
        <!-- Encabezado con Usuario, Registro de Asistencias, Grupo y Selector de Fecha -->
        <div class="header">
            <span id="user">Usuario: Jon</span>
            <h1>Registro de Asistencias</h1>
            <span id="group">Grupo: 101</span>
        </div>

        <!-- Selector de Fecha -->
        <div class="date-selector">
            <label for="attendanceDate">Seleccione la fecha:</label>
            <input type="date" id="attendanceDate" name="attendanceDate">
        </div>

        <div class="table-container">
        <table>
          <thead>
           <tr>
            <th>Matrícula</th>
            <th>Nombres</th>
            <th>Hora</th>
            <th>Fecha</th>
            <th>Opciones</th>
           </tr>
          </thead>
    <tbody id="attendanceTable">
        <!-- Filas generadas dinámicamente -->
    </tbody>
</table>
        </div>
        
        <!-- Botón de Guardar -->
        <a href="../menu.php">
            <button id="submit" class="save-btn">Regresar</button>
        </a>
    </div>

    <script src="../JS/ver.js"></script>
</body>
</html>
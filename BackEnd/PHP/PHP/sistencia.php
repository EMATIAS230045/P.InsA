<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla de Asistencias</title>
    <link rel="stylesheet" href="../CSS/sistencia.css">
</head>
<body>
    <div class="container">
        
        <div class="header">
            <span id="user">Usuario: Jon</span>
            <h1>Registro de Asistencias</h1>
            <span id="group">Grupo: 101</span>
        </div>

        <div class="date-selector">
            <label for="attendanceDate">Seleccione la fecha:</label>
            <input type="date" id="attendanceDate" name="attendanceDate">
        </div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Opciones</th>
                        <th>Matrícula</th>
                        <th>Nombres</th>
                        <th>Hora</th>
                        <th>Fecha</th>
                    </tr>
                </thead>
                <tbody id="attendanceTable">
                    
                </tbody>
            </table>
        </div>

        <div class="button-container">
            <button type="button" class="login-button" id="saveBtn"><img src="../ASSETS/flecha-de-circulo-de-disquete-a-la-derecha.png" class="button-icon">
                Guardar
            </button>
            <a href="menul.php">
            <button type="button" class="login-button" id="back">
                <img src="../ASSETS/deshacer.png" class="button-icon"> Regresar
            </button>
            </a>
        </div>
        <center><div id="message" class="message"></div></center>
    </div>

    <script src="../JS/sistencia.js"></script>
</body>
</html>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitácora</title>
    <link rel="stylesheet" href="../CSS/bi.css">
</head>
<body>
<div class="container">
        <span id="user">Usuario: Jon (admin)</span>
        <h1>Bitácora</h1>
        <h3>Elije el Equipo</h3>
            <span id="group">
                <select>
                    <option value="docencia1">Equipo1</option>
                    <option value="docencia2">Equipo2</option>
                    <option value="cafeteria">Equipo3</option>
                </select>
            </span>
        <a href="../menu.php">
            <button type="button" class="login-button" id="back">
                <img src="../ASSETS/deshacer.png" class="button-icon"> Regresar
            </button></a>

        <div id="results" class="results">
            <!-- Aquí se insertarán las tablas dinámicamente -->
        </div>
    </div>
    <script src="../JS/bi.js"></script>
</body>
</html>

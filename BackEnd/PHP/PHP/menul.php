<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú Principal</title>
    <link rel="stylesheet" href="../CSS/menul.css">
</head>
<body>
    <div class="menu-container">
        <h2>LIDER</h2>
        <div class="image-container">
            <img src="../ASSETS/aplicacion.jpg" alt="Descripción de la imagen">
        </div>
        <h2>Menú Principal</h2>
        <div class="menu-options">
            <button class="menu-button" id="bitacoraBtn">
                <img src="../ASSETS/lista-de-tablas.png" class="menu-icon">
                Bitacora
            </button>
            <button class="menu-button" id="asistenciaBtn">
                <img src="../ASSETS/lista-del-portapapeles.png" alt="Icono Asistencia" class="menu-icon">
            Asistencia
            </button>
            <button class="menu-button" id="horariosBtn">
                <img src="../ASSETS/calendario-reloj.png" alt="Icono Horarios" class="menu-icon">
                Ver horarios
            </button>
            <a href="../index.php">
            <button class="menu-button" id="cierreBtn">
                <img src="../ASSETS/ingresar.png" alt="Icono Regresar" class="menu-icon">
                Cerrar sesión
            </button>
            </a>
         </div>
    </div>
    <script src="../JS/menul.js"></script>
</body>
</html>

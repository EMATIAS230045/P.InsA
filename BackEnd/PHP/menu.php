<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú Principal</title>
    <link rel="stylesheet" href="CSS/menu.css">
</head>
<body>
    
    <div class="menu-container">
        <!-- Imagen circular en la parte superior -->
         <h2>ADMINISTRADOR</h2>
        <div class="image-container">
            <img src="ASSETS/aplicacion.jpg" alt="Descripción de la imagen">
        </div>

        <h2>Menú Principal </h2>
        <div class="menu-options">
            <button class="menu-button" id="asistenciaBtn">
                <img src="ASSETS/lista-del-portapapeles.png" alt="Icono Asistencia" class="menu-icon">
                Ver asistencia
            </button>
            <button class="menu-button" id="registrarBtn">
                <img src="ASSETS/papel-de-registro.png" alt="Icono Registrar" class="menu-icon">
                Registrar
            </button>
            <button class="menu-button" id="equiposBtn">
                <img src="ASSETS/ojo.png" alt="Icono Equipos" class="menu-icon">
                Ver equipos
            </button>
            <button class="menu-button" id="reportesBtn">
                <img src="ASSETS/lista-de-tablas.png" alt="Icono Reportes" class="menu-icon">
                Ver Bitacora
            </button>
            <button class="menu-button" id="horariosBtn">
                <img src="ASSETS/calendario-reloj.png" alt="Icono Horarios" class="menu-icon">
                Asignacion de horarios
            </button>
            <a href="index.php">
                <button class="menu-button" id="cerrarBtn">
                    <img src="ASSETS/ingresar.png" alt="Icono Regresar" class="menu-icon">
                    Cerrar sesión
                </button>
            </a>
        </div>
    </div>
    <script src="JS/menu.js"></script>
</body>
</html>

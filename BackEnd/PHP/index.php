<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Login Ambientalista</title>
    <link rel="stylesheet" href="CSS/style1.css">
</head>
<body>
    <div class="login-container">
        <!-- Imagen circular en la parte superior -->
        <div class="image-container">
            <img src="ASSETS/aplicacion.jpg" alt="Descripción de la imagen">
        </div>

        <h2>Iniciar Sesión</h2>
        <!-- Formulario de login -->
        <form id="loginForm" method="post" action="index.php"> 
        <?php 
        include "BD/conex.php";
        include "controlador.php";
    ?>
        <div class="input-group">
                <label for="nombre">Usuario</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="input-group">
                <label for="contraseña">Contraseña</label>
                <input type="password" id="contraseña" name="contraseña" required>
            </div>
            <!-- Botón de envío -->
            <button type="submit" class="login-button" name="btningresar">
                <img src="ASSETS/salida.png" alt="Ingresar Icono" class="button-icon"> Ingresar
            </button>
        </form>
    
</body>
</html>
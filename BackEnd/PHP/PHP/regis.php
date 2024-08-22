<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuarios</title>
    <link rel="stylesheet" href="../CSS/regis.css">
</head>
<body>
    <div class="register-container">
        <h2>Registro de Usuarios</h2>
        <form id="registerForm">
            <div class="input-group">
                <label for="name">Nombre:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-group">
                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="role">Rol:</label>
                <select id="role" name="role" required>
                    <option value="user">Integrante</option>
                    <option value="leader">Líder</option>
                </select>
            </div>
            <div id="extraFields">
                <div class="input-group">
                    <label for="team">Equipo:</label>
                    <input type="text" id="team" name="team" required>
                </div>
                <div class="input-group password-fields">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="input-group password-fields">
                    <label for="confirmPassword">Confirmar Contraseña:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                </div>
            </div>
            <div class="button-container">
                <button type="submit" class="submit-button">
                    <img src="flecha-de-circulo-de-disquete-a-la-derecha.png" class="button-icon" alt="Guardar"> Guardar
                </button>
                <button type="button" class="login-button" id="back">
                    <img src="deshacer.png" class="button-icon" alt="Regresar"> Regresar
                </button>
            </div>
        </form>
    </div>
    <div id="message" class="message"></div>
    <script src="../JS/regis.js"></script>
</body>
</html>





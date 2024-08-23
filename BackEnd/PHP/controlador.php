<?php
session_start();


if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

if (isset($_POST["btningresar"])) {
    
    if (isset($_POST["nombre"]) && isset($_POST["contraseña"])) {
        $usuario = $_POST["nombre"];
        $password = $_POST["contraseña"];

        
        $stmt = $conexion->prepare("SELECT Nombre, contraseña, Rol FROM usuarios WHERE Nombre = ?");
        
        if ($stmt === false) {
            die("Error en la preparación de la consulta: " . $conexion->error);
        }

        $stmt->bind_param("s", $usuario);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($datos = $result->fetch_assoc()) {
            // Comparar la contraseña ingresada con la almacenada en la base de datos
            if ($password === $datos['contraseña']) {
                // Almacenar información en la sesión
                $_SESSION["nombre"] = $datos["Nombre"];
                $_SESSION["rol"] = $datos["Rol"];

                // Redirigir al usuario según su rol
                switch ($datos["Rol"]) {
                    case "administrador":
                        header("Location: menu.php");
                        break;
                    case "lider":
                        header("Location: PHP/menul.php");
                        break;
                    case "integrante":
                        header("Location: PHP/menui.php"); 
                        break;
                    default:
                        echo "<div class='alert alert-danger'>Rol no reconocido</div>";
                }
                exit(); 
            } else {
                echo "<div class='alert alert-danger'>Acceso denegado: Contraseña incorrecta</div>";
            }
        } else {
            echo "<div class='alert alert-danger'>Acceso denegado: Usuario no encontrado</div>";
        }

       
        $stmt->close();
    } else {
        echo "<div class='alert alert-warning'>Campos vacíos</div>";
    }
}


$conexion->close();
?>

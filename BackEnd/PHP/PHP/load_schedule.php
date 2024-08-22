<?php


if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    
    if ($conexion->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }
    
    
    $stmt = $conexion->prepare("INSERT INTO horarios (fecha, hora, num_equipo) VALUES ('$startDate','$startTime','$team')");

    if ($stmt->execute()) {
        echo "Éxito";
    } else {
        echo "Error: " . $stmt->error;
    }
    

    $stmt->close();
    $conn->close();
}
?>

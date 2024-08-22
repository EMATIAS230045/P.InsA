<?php
header('Content-Type: application/json');


$conexion = new mysqli("localhost", "root", "", "bd_insa");


if ($conexion->connect_error) {
    die(json_encode(['error' => 'Conexión fallida: ' . $conexion->connect_error]));
}


$fecha = isset($_GET['fecha']) ? $_GET['fecha'] : '';

if ($fecha) {

    $stmt = $conexion->prepare("SELECT matricula, nombres, hora, fecha, estado FROM asistencias WHERE fecha = ? AND estado = 'presente'");
    $stmt->bind_param("s", $fecha);
    $stmt->execute();
    $result = $stmt->get_result();

    $asistencias = [];
    while ($row = $result->fetch_assoc()) {
        $asistencias[] = $row;
    }


    $stmt->close();
    
    echo json_encode($asistencias);
} else {
    echo json_encode([]);
}


$conexion->close();
?>

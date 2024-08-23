<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitácora</title>
    <link rel="stylesheet" href="../CSS/bita.css">
</head>
<body>
<div class="container">
        <h1>Bitácora</h1>
        <div class="options">
            <label for="locations">Selecciona una opción:</label>
            <select id="locations">
                <option value="docencia1">Docencia 1</option>
                <option value="docencia2">Docencia 2</option>
                <option value="docencia2">Docencia 3</option>
                <option value="docencia2">Docencia 4</option>
                <option value="cafeteria">Cafetería</option>
                <option value="docencia2">Pesado 1</option>
                <option value="docencia2">Pesado 2</option>
                <option value="docencia2">Servicios Escolares</option>
                <option value="docencia2">Clinica</option>
            </select>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th colspan="5">Condiciones</th>
                </tr>
                <tr>
                    <th id="dynamicName">Docencia1</th> <!-- Nombre dinámico -->
                    <th>Papel</th>
                    <th>Pet</th>
                    <th>Agua</th>
                    <th>Luz</th>
                    <th>Otro</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td id="locationName">Docencia1</td> <!-- Nombre dinámico en la fila -->
                    <td><input type="checkbox" class="checkbox" data-cond="Papel"></td>
                    <td><input type="checkbox" class="checkbox" data-cond="Pet"></td>
                    <td><input type="checkbox" class="checkbox" data-cond="Agua"></td>
                    <td><input type="checkbox" class="checkbox" data-cond="Luz"></td>
                    <td><input type="checkbox" class="checkbox" data-cond="Otro"></td>
                </tr>
            </tbody>
        </table>
        <div class="buttons">
            <button id="save">Guardar</button>
            <a href="menul.php" class="submit-button-link"> <button id="back">Regresar</button></a>
        </div>
        <div id="results" class="results">
            <!-- Aquí se insertarán las tablas dinámicamente -->
        </div>
    </div>

    <script src="../JS/bita.js"></script>
</body>
</html>


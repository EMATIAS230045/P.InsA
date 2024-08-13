document.getElementById('addEntryForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto

    const name = document.getElementById('name').value;

    // Crear una nueva fila en la tabla
    const table = document.getElementById('bitacoraTable').getElementsByTagName('tbody')[0];
    const newRow = table.insertRow();

    // Insertar celdas en la fila
    const cell1 = newRow.insertCell(0);
    const cell2 = newRow.insertCell(1);
    const cell3 = newRow.insertCell(2);
    const cell4 = newRow.insertCell(3);
    const cell5 = newRow.insertCell(4);
    const cell6 = newRow.insertCell(5);

    // Asignar valores a las celdas
    cell1.textContent = name;
    cell2.innerHTML = '<input type="checkbox" class="checkbox">';
    cell3.innerHTML = '<input type="checkbox" class="checkbox">';
    cell4.innerHTML = '<input type="checkbox" class="checkbox">';
    cell5.innerHTML = '<input type="checkbox" class="checkbox">';
    cell6.innerHTML = '<input type="checkbox" class="checkbox">';

    // Limpiar el formulario
    document.getElementById('addEntryForm').reset();
});

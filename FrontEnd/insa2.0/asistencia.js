document.getElementById('attendanceForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto

    const name = document.getElementById('name').value;
    const status = document.getElementById('status').value;

    // Validar que el usuario haya seleccionado un estado
    if (status === "") {
        alert("Por favor, selecciona un estado de asistencia.");
        return;
    }

    // Crear un nuevo elemento de lista con la información de asistencia
    const listItem = document.createElement('li');
    listItem.textContent = `${name} - ${status}`;
    document.getElementById('list').appendChild(listItem);

    // Limpiar los campos del formulario después de registrar
    document.getElementById('attendanceForm').reset();
});

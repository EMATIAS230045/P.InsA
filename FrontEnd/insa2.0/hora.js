document.getElementById('scheduleForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto

    const employee = document.getElementById('employee').value;
    const day = document.getElementById('day').value;
    const startTime = document.getElementById('startTime').value;
    const endTime = document.getElementById('endTime').value;

    // Crear un nuevo elemento de lista con la información del horario asignado
    const listItem = document.createElement('li');
    listItem.textContent = `Empleado: ${employee} | Día: ${day} | Horario: ${startTime} - ${endTime}`;
    document.getElementById('list').appendChild(listItem);

    // Limpiar los campos del formulario después de asignar el horario
    document.getElementById('scheduleForm').reset();
});

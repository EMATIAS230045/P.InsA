document.getElementById('scheduleForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto

    const employee = document.getElementById('employee').value;
    const startDay = document.getElementById('startDay').value;
    const endDay = document.getElementById('endDay').value;
    const startTime = document.getElementById('startTime').value;
    const endTime = document.getElementById('endTime').value;

    // Crear lista con la información del horario asignado
    const listItem = document.createElement('li');
    listItem.textContent = `Empleado: ${employee} | Días: ${startDay} - ${endDay} | Horario: ${startTime} - ${endTime}`;
    document.getElementById('list').appendChild(listItem);

    // Limpiar los campos del formulario después de asignar el horario
    document.getElementById('scheduleForm').reset();
});

document.getElementById('back').addEventListener('click', function() {
    window.location.href = "menu.html";
});
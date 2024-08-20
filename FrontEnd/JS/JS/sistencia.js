document.addEventListener('DOMContentLoaded', function() {
    const attendanceTable = document.getElementById('attendanceTable');
    const saveBtn = document.getElementById('saveBtn');
    const attendanceDateInput = document.getElementById('attendanceDate');


    // Función para cargar los datos de asistencia
    function loadAttendanceData(date) {
        attendanceTable.innerHTML = ''; // Limpiar la tabla antes de llenarla
        const filteredData = attendanceData.filter(record => record.fecha === date);

        filteredData.forEach((record, index) => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td><button onclick="toggleAttendance(${index})" class="attendance-btn ${record.asistencia === 'Ausente' ? 'absent' : 'present'}">${record.asistencia === 'Entrada' ? '✔️' : '❌'}</button></td>
                <td>${record.codigo}</td>
                <td>${record.nombre}</td>
                <td>${record.fechaHora}</td>
                <td>${record.fecha}</td>
            `;
            attendanceTable.appendChild(row);
        });
    }

    // Función para alternar el estado de asistencia
    window.toggleAttendance = function(index) {
        const btn = document.getElementsByClassName('attendance-btn')[index];
        if (btn.classList.contains('absent')) {
            btn.classList.remove('absent');
            btn.classList.add('present');
            btn.innerHTML = '✔️'; // Marcar como presente
            attendanceData[index].asistencia = 'Entrada'; // Actualizar el estado en los datos
        } else {
            btn.classList.add('absent');
            btn.classList.remove('present');
            btn.innerHTML = '❌'; // Marcar como ausente
            attendanceData[index].asistencia = 'Ausente'; // Actualizar el estado en los datos
        }
    }

    // Función para manejar el botón "Guardar"
    saveBtn.addEventListener('click', function() {
        const attendanceStates = [];

        // Recorremos los botones de asistencia para obtener el estado actual
        const buttons = document.getElementsByClassName('attendance-btn');
        for (let i = 0; i < buttons.length; i++) {
            attendanceStates.push({
                codigo: attendanceData[i].codigo,
                nombre: attendanceData[i].nombre,
                asistencia: buttons[i].classList.contains('absent') ? 'Ausente' : 'Presente'
            });
        }

        // Mostrar en la consola el estado actual (aquí podrías enviarlo al servidor)
        message.style.color = 'green';
        message.textContent = 'Guardado exitosamente.';

        // Ocultar el mensaje después de 3 segundos
        setTimeout(() => {
            message.textContent = '';
        }, 3000);

        // Aquí podrías agregar lógica para guardar los datos en una base de datos
    });

    // Inicializar la fecha actual en el input y cargar la tabla
    const today = new Date().toISOString().split('T')[0]; // Obtener la fecha actual en formato YYYY-MM-DD
    attendanceDateInput.value = today; // Establecer la fecha actual en el input de fecha
    loadAttendanceData(today); // Renderizar la tabla con la fecha actual

    // Evento para cambiar las asistencias según la fecha seleccionada
    attendanceDateInput.addEventListener('change', function() {
        const selectedDate = this.value; // Obtener la fecha seleccionada
        loadAttendanceData(selectedDate); // Renderizar la tabla con la nueva fecha
    });
});

    document.getElementById('back').addEventListener('click', function() {
    window.location.href = "menul.html";
});

// Cambiar el nombre dinámico según la selección del usuario
const locationSelect = document.getElementById('locations');
const locationNameField = document.getElementById('locationName');
const dynamicNameField = document.getElementById('dynamicName');

locationSelect.addEventListener('change', function() {
    const selectedLocation = locationSelect.options[locationSelect.selectedIndex].text;
    locationNameField.textContent = selectedLocation;
    dynamicNameField.textContent = selectedLocation;
});

document.getElementById('save').addEventListener('click', function() {
    const checkboxes = document.querySelectorAll('.checkbox');
    const resultsDiv = document.getElementById('results');

    const selectedConditions = {
        Papel: false,
        Pet: false,
        Agua: false,
        Luz: false,
        Otro: false
    };

    checkboxes.forEach(function(checkbox) {
        if (checkbox.checked) {
            const cond = checkbox.getAttribute('data-cond');
            selectedConditions[cond] = true;
        }
    });

    // Crear una nueva tabla para los resultados
    const newTable = document.createElement('table');
    newTable.innerHTML = `
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Papel</th>
                <th>Pet</th>
                <th>Agua</th>
                <th>Luz</th>
                <th>Otro</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${locationSelect.options[locationSelect.selectedIndex].text}</td>
                ${Object.keys(selectedConditions).map(key => `
                    <td><input type="checkbox" ${selectedConditions[key] ? 'checked' : ''} disabled></td>
                `).join('')}
            </tr>
        </tbody>
    `;

    // Añadir la nueva tabla al contenedor de resultados
    resultsDiv.appendChild(newTable);

    // Mostrar el contenedor de resultados
    resultsDiv.style.display = 'block';

    // Restablecer los checkboxes para permitir un nuevo registro
    checkboxes.forEach(function(checkbox) {
        checkbox.checked = false;
    });
});

document.getElementById('back').addEventListener('click', function() {
    window.location.href = "menu.html";
});
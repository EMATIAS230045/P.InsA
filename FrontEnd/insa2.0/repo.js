document.getElementById('reportForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto

    const title = document.getElementById('title').value;
    const description = document.getElementById('description').value;
    const date = document.getElementById('date').value;

    // Crear un nuevo elemento de lista con la información del reporte
    const listItem = document.createElement('li');
    listItem.textContent = `Título: ${title} | Fecha: ${date} | Descripción: ${description}`;
    document.getElementById('list').appendChild(listItem);

    // Limpiar los campos del formulario después de registrar el reporte
    document.getElementById('reportForm').reset();
});

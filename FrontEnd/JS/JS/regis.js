document.getElementById('registerForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirmPassword').value;
    const message = document.getElementById('message');

    // Validar que las contraseñas coincidan
    if (password !== confirmPassword) {
        message.textContent = "Las contraseñas no coinciden. Inténtalo de nuevo.";
        return;
    }

    // Si las contraseñas coinciden, muestra un mensaje de éxito
    message.style.color = 'green';
    message.textContent = "Usuario registrado exitosamente.";

    // Limpiar los campos del formulario después de registrar
    document.getElementById('registerForm').reset();
});

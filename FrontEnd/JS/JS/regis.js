document.getElementById('registerForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirmPassword').value;
    const role = document.getElementById('role').value;
    const message = document.getElementById('message');

    // Validar que las contraseñas coincidan si el rol es líder
    if (role === 'leader') {
        if (password !== confirmPassword) {
            message.textContent = "Las contraseñas no coinciden. Inténtalo de nuevo.";
            return;
        }
    }

    // Si el rol es usuario, solo validar nombre y correo
    if (role === 'user' && (!name || !email)) {
        message.textContent = "Por favor, completa todos los campos.";
        return;
    }

    // Si el rol es líder y las contraseñas coinciden, o si el rol es usuario y los campos están completos
    message.style.color = 'green';
    message.textContent = "Usuario registrado exitosamente.";

    // Limpiar los campos del formulario después de registrar
    document.getElementById('registerForm').reset();
});

document.getElementById('role').addEventListener('change', function() {
    const role = this.value;
    const extraFields = document.getElementById('extraFields');
    const passwordFields = document.querySelectorAll('.password-fields');

    if (role === 'leader') {
        extraFields.style.display = 'block';
        passwordFields.forEach(field => field.style.display = 'block');
    } else {
        extraFields.style.display = 'none';
        passwordFields.forEach(field => field.style.display = 'none');
    }
});

document.getElementById('back').addEventListener('click', function() {
    window.location.href = "menu.html";
});

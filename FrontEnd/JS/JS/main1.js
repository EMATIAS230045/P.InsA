document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe por defecto
    
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    
    // Aquí puedes agregar autenticación
    if (username === "Jonathan" && password === "1234") {
        alert('Bienvenido, ' + username);
        // Redirigir a otra página
        // window.location.href = "";
    } else {
        alert('Usuario o contraseña incorrectos');
    }
});

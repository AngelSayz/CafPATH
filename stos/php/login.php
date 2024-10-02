<?php
session_start();

// Simulación de la base de datos de usuarios con roles
$users = [
    'admin_user' => ['password' => 'admin_pass', 'role' => 'admin'],
    'supervisor_user' => ['password' => 'supervisor_pass', 'role' => 'supervisor'],
    'employee_user' => ['password' => 'employee_pass', 'role' => 'employee'],
];

// Recoger los datos del formulario
$username = $_POST['username'];
$password = $_POST['password'];

// Verificar si el usuario existe en la "base de datos"
if (isset($users[$username]) && $users[$username]['password'] === $password) {
    // Guardar el rol del usuario en la sesión
    $_SESSION['role'] = $users[$username]['role'];

    // Redirigir a la página principal
    header('Location: dashboard.php');
} else {
    // Si el login falla, redirigir al login con un error
    header('Location: login.html?error=Invalid credentials');
}
?>

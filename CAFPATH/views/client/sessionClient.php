<?php
session_start();

if (!isset($_SESSION['client_id'])) {
    header("Location: login_form.php"); 
    exit;
}

$client_username = $_SESSION['client_username'];
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio del Cliente</title>
</head>
<body>
    <h1>Bienvenido, <?php echo htmlspecialchars($client_username); ?>!</h1>
    <p>Has iniciado sesión exitosamente.</p>
    <a href="infoPackages.php">Info Packages</a>
    <a href="logout.php">Cerrar sesión</a>
</body>
</html>
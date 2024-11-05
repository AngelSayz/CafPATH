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
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        nav {
            margin-top: 20px;
            text-align: center;
        }
        nav a {
            margin-top: 15px;
            text-decoration: none;
            color: #000000;
        }
        nav a:hover {
            text-decoration: underline;
        }
        main {
            padding: 20px;
            max-width: 800px;
            margin: auto;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <?php include '../partials/header.php'; ?>
    </header>
    <br><br><br><br><br>
    <nav>
        <a href="infoPackages.php">Info Packages</a>
        <a href="profile.php">Perfil</a>
        <a href="reportIncident.html">Reportar un incidente</a>
        <a href="../../index.php">Cerrar sesión</a>
    </nav>
    <main>
    <h1>Bienvenido, <?php echo htmlspecialchars($client_username); ?>!</h1>
        <p>Has iniciado sesión exitosamente. Aquí puedes gestionar tus paquetes y configuraciones.</p>
        <section>
            <h3>Últimas Noticias</h3>
            <p>¡Mantente informado con las últimas actualizaciones y noticias!</p>
        </section>
        <section>
            <h3>Ofertas Especiales</h3>
            <p>Descubre nuestras ofertas exclusivas para clientes registrados.</p>
        </section>
    </main>
    <footer>
        <?php include '../partials/footer.php'; ?>
    </footer>
</body>
</html>
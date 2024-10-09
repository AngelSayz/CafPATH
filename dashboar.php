<?php
session_start();
if (!isset($_SESSION['role'])) {
    header('Location: login.html');
    exit();
}

$role = $_SESSION['role'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css">
    <title>Employee Dashboard</title>
</head>
<body>
    <div class="dashboard-container">
        <h1>Welcome to the Employee Dashboard</h1>

        <!-- Mostrar las opciones según el rol del usuario -->
        <?php if ($role === 'admin'): ?>
            <h2>Administrator Functions</h2>
            <ul>
                <li><a href="#">Register new employees</a></li>
                <li><a href="#">Assign vehicle to delivery employees</a></li>
                <li><a href="#">Manage company-wide reports</a></li>
            </ul>
        <?php elseif ($role === 'supervisor'): ?>
            <h2>Supervisor Functions</h2>
            <ul>
                <li><a href="#">Assign vehicle to delivery employees</a></li>
                <li><a href="#">Assign warehouse orders to employees</a></li>
                <li><a href="#">Consult employee and customer information</a></li>
            </ul>
        <?php elseif ($role === 'employee'): ?>
            <h2>Employee Functions</h2>
            <ul>
                <li><a href="#">View assigned vehicle</a></li>
                <li><a href="#">Access assigned delivery routes</a></li>
            </ul>
        <?php endif; ?>
    </div>
</body>
</html>

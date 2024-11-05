<?php
session_start();
include '../../config/connection.php'; 

if (!isset($_SESSION['client_id'])) {
    header("Location: ../../login.php");
    exit();
}

$client_id = $_SESSION['client_id']; 

$sql_client = "SELECT c.num, c.name, c.lastname, c.surname, c.company, c.phone, c.street, c.colony, c.number
               FROM Client AS c
               WHERE c.num = ?"; 

$stmt_client = $conn->prepare($sql_client);
$stmt_client->bind_param("i", $client_id); 
$stmt_client->execute(); 
$result_client = $stmt_client->get_result(); 
$client = $result_client->fetch_assoc(); 

if ($stmt_client->error) {
    echo "Error: " . $stmt_client->error;
}

if (!$client) {
    $client = []; 
}

$sql_orders = "SELECT s.num, s.date, s.delivery_date
               FROM Shipment AS s
               WHERE s.client = ?"; 

$stmt_orders = $conn->prepare($sql_orders);
$stmt_orders->bind_param("i", $client_id); 
$stmt_orders->execute(); 
$result_orders = $stmt_orders->get_result(); 
$orders = $result_orders->fetch_all(MYSQLI_ASSOC); 

if ($stmt_orders->error) {
    echo "Error: " . $stmt_orders->error; 
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Información del Cliente y Sus Pedidos</title>
</head>
<body>
    <h1>Información del Cliente</h1>

    <?php if ($client): ?>
        <p><strong>ID del Cliente:</strong> <?php echo htmlspecialchars($client['num']); ?></p>
        <p><strong>Nombre:</strong> <?php echo htmlspecialchars($client['name']); ?></p>
        <p><strong>Apellido Paterno:</strong> <?php echo htmlspecialchars($client['lastname']); ?></p>
        <p><strong>Apellido Materno:</strong> <?php echo htmlspecialchars($client['surname']); ?></p>
        <p><strong>Empresa:</strong> <?php echo htmlspecialchars($client['company']); ?></p>
        <p><strong>Teléfono:</strong> <?php echo htmlspecialchars($client['phone']); ?></p>
        <p><strong>Calle:</strong> <?php echo htmlspecialchars($client['street']); ?></p>
        <p><strong>Colonia:</strong> <?php echo htmlspecialchars($client['colony']); ?></p>
        <p><strong>Número:</strong> <?php echo htmlspecialchars($client['number']); ?></p>
    <?php else: ?>
        <p>No se encontró información del cliente.</p>
    <?php endif; ?>

    <h2>Mis Pedidos</h2>
    <table border="1">
        <tr>
            <th>ID Pedido</th>
            <th>Fecha de Pedido</th>
            <th>Fecha de Entrega</th>
            <th>Acción</th> 
        </tr>
        <?php if ($orders): ?>
            <?php foreach ($orders as $order): ?>
                <tr>
                    <td><?php echo htmlspecialchars($order['num']); ?></td>
                    <td><?php echo htmlspecialchars($order['date']); ?></td>
                    <td><?php echo htmlspecialchars($order['delivery_date']); ?></td>
                    <td>
                        <form action="../../app/Controllers/infoPackages.php" method="get">
                            <input type="hidden" name="pedido_id" value="<?php echo htmlspecialchars($order['num']); ?>">
                            <button type="submit">Rastrear</button>
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
        <?php else: ?>
            <tr>
                <td colspan="4">No tienes pedidos realizados.</td>
            </tr>
        <?php endif; ?>
    </table>
</body>
</html>

<?php
session_start();
include '../../config/connection.php';

if (!isset($_SESSION['num'])) {  
    die("Acceso no autorizado. Por favor inicie sesión.");
}

$supervisor_id = $_SESSION['num'];

$sql = "SELECT warehouse FROM Employees WHERE num = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $supervisor_id);
$stmt->execute();
$stmt->bind_result($warehouse_code);
$stmt->fetch();
$stmt->close();

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['employee_num'])) {

    $sql = "SELECT warehouse FROM Employees WHERE num = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $employee_num);
    $stmt->execute();
    $result = $stmt->get_result();
    $employeeData = $result->fetch_assoc();

    if ($employeeData) {
        $warehouse = $employeeData['warehouse'];

        $sql = "SELECT V.number, V.license_plate, V.model
                FROM Vehicle V
                LEFT JOIN Vehicle_Assignment VA ON V.number = VA.vehicle_number
                WHERE V.warehouse = ? AND VA.employee_num IS NULL";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $warehouse);
        $stmt->execute();
        $vehiculosDisponibles = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

        $sqlOrders = "SELECT s.num, s.date, c.street, c.colony, c.number 
                      FROM Shipment s 
                      JOIN Client c ON c.num = s.client 
                      WHERE s.warehouse = ? AND s.path IS NULL AND s.vehicle IS NULL";
        $stmtOrders = $conn->prepare($sqlOrders);
        $stmtOrders->bind_param("s", $warehouse);
        $stmtOrders->execute();
        $resultOrders = $stmtOrders->get_result();
    } else {
        echo "Empleado no encontrado.";
    }
    $stmt->close();
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['assign_vehicle'])) {
    $employee_num = $_POST['employee_num'];
    $vehicle_number = $_POST['vehicle_number'];
    $starting_point = $_POST['starting_point'];
    $end_point = $_POST['end_point'];
    $starting_date = $_POST['starting_date'];
    $est_arrival = $_POST['est_arrival'];

    $sqlRoute = "INSERT INTO Path (starting_point, end_point, starting_date, est_arrival) 
                 VALUES (?, ?, ?, ?)";
    $stmtRoute = $conn->prepare($sqlRoute);
    $stmtRoute->bind_param("ssss", $starting_point, $end_point, $starting_date, $est_arrival);

    if ($stmtRoute->execute()) {
        $new_route_id = $stmtRoute->insert_id;
        $assigned_date = date("Y-m-d");
        $sqlAssignVehicle = "INSERT INTO Vehicle_Assignment (vehicle_number, employee_num, assigned_date) 
                             VALUES (?, ?, ?)";
        $stmtAssignVehicle = $conn->prepare($sqlAssignVehicle);
        $stmtAssignVehicle->bind_param("iis", $vehicle_number, $employee_num, $assigned_date);

        if ($stmtAssignVehicle->execute()) {
            echo "Vehículo asignado correctamente al empleado.";

            $selected_orders = $_POST['orders'] ?? [];
            if (!empty($selected_orders)) {
                foreach ($selected_orders as $order_id) {
                    $sqlCheckOrder = "SELECT num FROM Shipment WHERE num = ?";
                    $stmtCheckOrder = $conn->prepare($sqlCheckOrder);
                    $stmtCheckOrder->bind_param("i", $order_id);
                    $stmtCheckOrder->execute();
                    $stmtCheckOrder->store_result();

                    if ($stmtCheckOrder->num_rows > 0) {
                        $sqlUpdateOrder = "UPDATE Shipment SET vehicle = ?, path = ? WHERE num = ?";
                        $stmtUpdateOrder = $conn->prepare($sqlUpdateOrder);
                        $stmtUpdateOrder->bind_param("iis", $vehicle_number, $new_route_id, $order_id);
                        if (!$stmtUpdateOrder->execute()) {
                            echo "Error al actualizar el pedido: " . $stmtUpdateOrder->error;
                        }
                        $stmtUpdateOrder->close();

                        $sqlInsertRutaDetalles = "INSERT INTO RutaDetalles (id_vehiculo, fecha, orden_entrega, id_paquete, direccion_destino, id_ruta) 
                                                   VALUES (?, ?, ?, ?, ?, ?)";
                        $stmtInsertRutaDetalles = $conn->prepare($sqlInsertRutaDetalles);
                        $direccion_destino = $_POST['direccion_destino'] ?? 'No especificada'; // Asegúrate de obtener la dirección destino
                        $stmtInsertRutaDetalles->bind_param("isiisi", $vehicle_number, $starting_date, $order_id, $order_id, $direccion_destino, $new_route_id);
                        if (!$stmtInsertRutaDetalles->execute()) {
                            echo "Error al insertar en RutaDetalles: " . $stmtInsertRutaDetalles->error;
                        }
                        $stmtInsertRutaDetalles->close();
                    } else {
                        echo "El pedido con ID $order_id no existe.";
                    }
                    $stmtCheckOrder->close();
                }
                echo " Los pedidos seleccionados han sido asignados al vehículo y registrados en la ruta.";
            }
        } else {
            echo "Error al asignar vehículo: " . $stmtAssignVehicle->error;
        }
        $stmtAssignVehicle->close();
    } else {
        echo "Error al crear ruta: " . $stmtRoute->error;
    }
    $stmtRoute->close();
}

if (isset($stmtOrders) && $stmtOrders) {
    $stmtOrders->close();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Asignar Vehículo a Empleado</title>
</head>
<body>
    <h2>Asignar Vehículo a Empleado</h2>
    <form method="POST">
        <label for="employee_num">Número de Empleado:</label>
        <input type="number" name="employee_num" id="employee_num" required>
        <button type="submit">Buscar Vehículos Disponibles</button>
    </form>

    <?php if (isset($vehiculosDisponibles) && count($vehiculosDisponibles) > 0): ?>
        <h3>Vehículos disponibles en el almacén del empleado</h3>
        <form method="POST">
            <input type="hidden" name="employee_num" value="<?php echo $employee_num; ?>">
            <label for="vehicle_number">Seleccione un Vehículo:</label>
            <select name="vehicle_number" id="vehicle_number" required>
                <?php foreach ($vehiculosDisponibles as $vehiculo): ?>
                    <option value="<?php echo $vehiculo['number']; ?>">
                        <?php echo "ID: " . $vehiculo['number'] . " - Placa: " . $vehiculo['license_plate'] . " - Modelo: " . $vehiculo['model']; ?>
                    </option>
                <?php endforeach; ?>
            </select>

            <h3>Seleccionar Pedidos para Asignar</h3>
            <div id="orders">
                <?php if (isset($resultOrders) && $resultOrders->num_rows > 0): ?>
                    <ul>
                    <?php while ($order = $resultOrders->fetch_assoc()): ?>
                        <li>
                            <input type="checkbox" name="orders[]" value="<?php echo $order['num']; ?>"> 
                            Pedido <?php echo $order['num']; ?> (Fecha: <?php echo $order['date']; ?>, Dirección: <?php echo $order['street'] . ', ' . $order['colony'] . ' ' . $order['number']; ?>)
                        </li>
                    <?php endwhile; ?>
                    </ul>
                <?php else: ?>
                    <p>No hay pedidos disponibles para asignar.</p>
                <?php endif; ?>
            </div>

            <h3>Datos de la Ruta</h3>
            <label for="starting_point">Punto de Inicio:</label>
            <input type="text" name="starting_point" id="starting_point" required>
            <label for="end_point">Punto de Destino:</label>
            <input type="text" name="end_point" id="end_point" required>
            <label for="starting_date">Fecha de Inicio:</label>
            <input type="date" name="starting_date" id="starting_date" required>
            <label for="est_arrival">Fecha Estimada de Llegada:</label>
            <input type="date" name="est_arrival" id="est_arrival" required>
            <button type="submit" name="assign_vehicle">Asignar Vehículo y Crear Ruta</button>
        </form>
    <?php elseif (isset($vehiculosDisponibles) && count($vehiculosDisponibles) == 0): ?>
        <p>No hay vehículos disponibles en el almacén de este empleado.</p>
    <?php endif; ?>
</body>
</html>

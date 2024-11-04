<?php
include 'conecxion.php';

if (isset($_GET['tracking_code'])) {
    $tracking_code = $_GET['tracking_code'];

    $sql = "SELECT Record.date, Record.location, Record.status 
            FROM Shipment 
            JOIN Record ON Shipment.num = Record.shipment 
            WHERE Shipment.num = ? 
            ORDER BY Record.date DESC";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $tracking_code);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "Fecha: " . $row['date'] . "<br>";
            echo "Ubicación: " . $row['location'] . "<br>";
            echo "Estado: " . $row['status'] . "<br><br>";
        }
    } else {
        echo "No se encontraron detalles para este código de rastreo.";
    }
    $stmt->close();
} else {
    echo "Por favor, ingrese un código de rastreo válido.";
}
?>

<form method="GET" action="rastreo.php">
    <label for="tracking_code">Ingrese su código de rastreo:</label>
    <input type="text" id="tracking_code" name="tracking_code" required>
    <input type="submit" value="Rastrear">
</form>

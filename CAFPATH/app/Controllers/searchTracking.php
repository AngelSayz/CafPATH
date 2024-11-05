<?php
include_once '../../config/connection.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $trackingcode = $_POST['trackingcode'];

    $sql = "SELECT r.date, r.location, r.status, r.client 
            FROM Record r
            JOIN Shipment s ON r.shipment = s.num
            WHERE s.trackingcode = ?";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $trackingcode);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "<h2>Información del Pedido</h2>";
        while ($row = $result->fetch_assoc()) {
            echo "Fecha: " . $row["date"] . "<br>";
            echo "Ubicación: " . $row["location"] . "<br>";
            echo "Estado: " . $row["status"] . "<br>";
            echo "ID del Cliente: " . $row["client"] . "<br><br>";
        }
    } else {
        echo "No se encontró ningún pedido con ese código de rastreo.";
    }

    $stmt->close();
}

$conn->close();
?>

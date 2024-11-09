<?php
include_once '../../config/connection.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $trackingcode = $_POST['trackingcode'];

    $sql = "SELECT r.date, r.location, r.status, r.client 
            FROM Record r
            JOIN Shipment s ON r.shipment = s.num
            WHERE s.tracking_code = ?";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $trackingcode);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "<h2>Información del Pedido</h2>";
        echo "<div class='progress-bar'>";

        $statuses = ['Pedido Realizado', 'En Proceso', 'En Tránsito', 'Entregado'];
        $icons = [
            '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-check"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M5 12l5 5l10 -10" /></svg>', 
            '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-tools"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 21h4l13 -13a1.5 1.5 0 0 0 -4 -4l-13 13v4" /><path d="M14.5 5.5l4 4" /><path d="M12 8l-5 -5l-4 4l5 5" /><path d="M7 8l-1.5 1.5" /><path d="M16 12l5 5l-4 4l-5 -5" /><path d="M16 17l-1.5 1.5" /></svg>', 
            '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-mail-fast"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 7h3" /><path d="M3 11h2" /><path d="M9.02 8.801l-.6 6a2 2 0 0 0 1.99 2.199h7.98a2 2 0 0 0 1.99 -1.801l.6 -6a2 2 0 0 0 -1.99 -2.199h-7.98a2 2 0 0 0 -1.99 1.801z" /><path d="M9.8 7.5l2.982 3.28a3 3 0 0 0 4.238 .202l3.28 -2.982" /></svg>', 
            '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" class="icon icon-tabler icons-tabler-filled icon-tabler-map-pin"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M18.364 4.636a9 9 0 0 1 .203 12.519l-.203 .21l-4.243 4.242a3 3 0 0 1 -4.097 .135l-.144 -.135l-4.244 -4.243a9 9 0 0 1 12.728 -12.728zm-6.364 3.364a3 3 0 1 0 0 6a3 3 0 0 0 0 -6z" /></svg>'
        ];
        $index = 0;

        while ($row = $result->fetch_assoc()) {
            $status = $row["status"];
            $date = $row["date"];
            $location = $row["location"];
            $client = $row["client"];
            $stepClass = in_array($status, $statuses) ? 'active' : '';

            echo "<div class='step $stepClass' onclick='showDetails($index)'>";
            echo "<div class='icon'>{$icons[$index]}</div>";
            echo "<div class='circle'></div>";
            echo "<span class='status-text'>$status ▼</span>";
            echo "<div class='details' id='details-$index'>";
            echo "<p><strong>Fecha:</strong> $date</p>";
            echo "<p><strong>Ubicación:</strong> $location</p>";
            echo "<p><strong>ID del Cliente:</strong> $client</p>";
            echo "</div></div>";
            $index++;
        }
        echo "</div>";
    } else {
        echo "<p>No se encontró ningún pedido con ese código de rastreo.</p>";
    }

    $stmt->close();
}

$conn->close();
?>

<style>
    body {
        font-family: Arial, sans-serif;
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 10rem;
        margin-bottom: 0px;
        background-color: #f4f4f9;
    }
    .form-container {
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
    label {
        font-weight: bold;
    }
    input[type="text"] {
        padding: 5px;
        margin-right: 10px;
    }
    input[type="submit"] {
        padding: 5px 10px;
        background-color: #007bff;
        color: white;
        border: none;
        cursor: pointer;
    }
    .progress-bar {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin-top: 20px;
        font-size: 18px;
    }
    .step {
        position: relative;
        display: flex;
        align-items: center;
        margin-bottom: 40px;
        cursor: pointer;
        padding-left: 40px;
    }
    .icon {
        position: absolute;
        left: 0;
        width: 24px;
        height: 24px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .circle {
        width: 20px;
        height: 20px;
        background-color: #e0e0e0;
        border-radius: 50%;
        margin: 0 15px;
        position: relative;
        z-index: 1;
    }
    .step.active .circle {
        background-color: #4caf50;
    }
    .step.current .circle {
        width: 25px;
        height: 25px;
        animation: pulse 1.5s infinite;
    }
    .status-text {
        margin-left: 10px;
        font-size: 16px;
    }
    .step::after {
        content: '';
        position: absolute;
        top: 10px;
        left: 64px;
        width: 2px;
        height: 60px;
        background-color: #e0e0e0;
        z-index: 0;
    }
    .step.active::after {
        background-color: #4caf50;
    }
    .step:last-child::after {
        display: none;
    }
    .details {
        display: none;
        position: absolute;
        left: 200px;
        top: -10px;
        background-color: white;
        padding: 15px;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        width: 250px;
        z-index: 2;
    }
    @keyframes pulse {
        0% {
            transform: scale(1);
        }
        50% {
            transform: scale(1.1);
        }
        100% {
            transform: scale(1);
        }
    }
</style>

<script>
    function showDetails(index) {
        const allDetails = document.querySelectorAll('.details');
        allDetails.forEach((detail, i) => {
            if (i !== index) {
                detail.style.display = 'none';
            }
        });

        const details = document.getElementById('details-' + index);
        if (details.style.display === 'block') {
            details.style.display = 'none';
        } else {
            details.style.display = 'block';
        }
    }

    document.addEventListener('click', function(event) {
        if (!event.target.closest('.step')) {
            const allDetails = document.querySelectorAll('.details');
            allDetails.forEach(detail => {
                detail.style.display = 'none';
            });
        }
    });
</script>


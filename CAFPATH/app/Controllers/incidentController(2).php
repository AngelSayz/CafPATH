<?php
include_once '../../config/connection.php';

$user = $_POST['username'];
$description = $_POST['description'];
$date = $_POST['date'];

$sql_user = "SELECT num FROM Users WHERE username = ?";
$stmt_user = $conn->prepare($sql_user);
$stmt_user->bind_param("s", $user);
$stmt_user->execute();
$result_user = $stmt_user->get_result();

if ($result_user->num_rows > 0) {
    $user_id = $result_user->fetch_assoc()['num'];

    $sql_incident = "INSERT INTO Incident (description, date, user) VALUES (?, ?, ?)";
    $stmt_incident = $conn->prepare($sql_incident);
    $stmt_incident->bind_param("ssi", $description, $date, $user_id);

    if ($stmt_incident->execute()) {
        echo "Incidente reportado con éxito.";
    } else {
        echo "Error al reportar el incidente: " . $conn->error;
    }

    $stmt_incident->close();
} else {
    echo "Usuario no encontrado.";
}

$stmt_user->close();
$conn->close();
?>
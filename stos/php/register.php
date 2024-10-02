<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recoger datos del formulario
    $firstName = $_POST['first-name'];
    $lastName = $_POST['last-name'];
    $secondLastName = $_POST['second-last-name'];
    $company = $_POST['company'];
    $phone = $_POST['phone'];
    $street = $_POST['street'];
    $city = $_POST['number'];
    $postalCode = $_POST['colony'];


    $userNumber = 'USER-' . rand(100000, 999999);
    $password = substr(str_shuffle('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()'), 0, 8);


    echo "<h2>Client Registered Successfully!</h2>";
    echo "<p><strong>First Name:</strong> $firstName</p>";
    echo "<p><strong>Last Name:</strong> $lastName</p>";
    echo "<p><strong>Second Last Name:</strong> $secondLastName</p>";
    echo "<p><strong>Company:</strong> $company</p>";
    echo "<p><strong>Phone:</strong> $phone</p>";
    echo "<p><strong>Street:</strong> $street</p>";
    echo "<p><strong>Number:</strong> $number</p>";
    echo "<p><strong>Colony:</strong> $colony</p>";
    echo "<hr>";
    echo "<h3>Your Generated Credentials:</h3>";
    echo "<p><strong>Username:</strong> $userNumber</p>";
    echo "<p><strong>Password:</strong> $password</p>";
}
?>
<?php include '../partials/header.php'; ?>
<link rel="stylesheet" href="../../assets/css/style.css">
<main>
    <h1>Contact Form</h1>
    <form action="processContactForm.php" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" required></textarea><br>

        <input type="submit" value="Submit">
    </form>
</main>
<?php include '../partials/footerViews.php'; ?>

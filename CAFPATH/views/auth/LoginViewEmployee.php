<link rel="stylesheet" href="../../assets/css/style.css">
<title>Employee Login</title>

<body>
    <div class="login-container">
        <h1>Employee Login</h1>
        <form action="../../app/Controllers/AuthController.php" method="POST">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>

            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>

            <button type="submit">Login</button>
        </form>
    </div>
</body>

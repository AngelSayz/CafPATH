<link rel="stylesheet" href="../../assets/css/style.css">

<title>Login</title>
<head>
    <?php include '../partials/header.php'; ?>
</head>
<body class="login-body">
    <div class="login-container">
        <img class="logo" src="../../assets/img/logo.png" alt="logo-cafpath">
        <form action="../../app/Controllers/AuthUser.php" method="post">
        <div class="login-form">
            <div class="title">LOGIN</div>
            <div class="input-group">
                <input type="user" name="username" required placeholder="Username">
            </div>
            <div class="input-group">
                <input type="password" name="password" required placeholder="Password">
            </div>
            <div class="checkbox" id="remember">
                <input type="checkbox" name="remember" id="remember">
                <label for="remember">Remember me</label>
            </div>
            <div class="forgot-password">
                <a href="#">Forgot password?</a>
            </div>
            <div class="forgot-password">
                <a href="../client/register.php">Register</a>
            </div>
                <button type="submit">Login</button>
            </div>
        </div>
    </div>
</body>
<footer>
</footer>
</html>
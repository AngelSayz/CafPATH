<?php session_start(); ?>
<script src="../../assets/js/main.js" defer></script>
<link rel="stylesheet" href="../../assets/css/style.css">

<div class="layout">
    <header>
        <?php include '../partials/header.php'; ?>
    </header>
    <nav>
        <ul style="list-style-type: none;">
            <br><br><br>
            <li><a href="#" id="link-stock" style="text-decoration: none; color: var(--white);">Stock</a></li>
            <br>
            <li><a href="#" id="link-newEmployee" style="text-decoration: none; color: var(--white);">Register Employee</a></li>
            <br>
            <li><a href="#" id="link-preparePackage" style="text-decoration: none; color: var(--white);">Packages</a></li>
            <br>
            <li><a href="createPath.php">Create Path</a></li>
            <br>
            <li><a href="#" id="link-users" style="text-decoration: none; color: var(--white);">Assign Package</a></li>
            <br>
            <li><a href="#" id="link-routes" style="text-decoration: none; color: var(--white);">Routes Created</a></li>
            <br>
            <li><a href="#" id="link-tracking" style="text-decoration: none; color: var(--white);">Tracking Package</a></li>
        </ul>
    </nav>
    
    <main id="main-content">
        <h2>Bienvenido, 
            <?php 
            if (isset($_SESSION['username'])) {
                echo $_SESSION['username']; 
            } else {
                echo "Invitado"; // Mensaje alternativo si 'username' no está definido
            }
            ?>
        </h2>
    </main>
    
    <article class="widget">Info</article>
    <article class="stats">Stats</article>
    
    <footer>
        <?php include '../partials/footer.php'; ?>
    </footer> 
</div>

<script>
    // Función para cargar el contenido dinámicamente en main-content
    function loadContent(url) {
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text();
            })
            .then(data => {
                document.getElementById('main-content').innerHTML = data;
            })
            .catch(error => {
                console.error('Error fetching content:', error);
                document.getElementById('main-content').innerHTML = "<p>Error al cargar el contenido.</p>";
            });
    }

    // Asignación de eventos a los enlaces del menú
    document.getElementById('link-stock').addEventListener('click', function(event) {
        event.preventDefault();
        loadContent('stock.php');
    });

    document.getElementById('link-newEmployee').addEventListener('click', function(event) {
        event.preventDefault();
        loadContent('newEmployee.php');
    });

    document.getElementById('link-preparePackage').addEventListener('click', function(event) {
        event.preventDefault();
        loadContent('preparePackage.php');
    });


    document.getElementById('link-users').addEventListener('click', function(event) {
        event.preventDefault();
        loadContent('assignPackage.php');
    });

    document.getElementById('link-routes').addEventListener('click', function(event) {
        event.preventDefault();
        loadContent('routes.php');
    });

    document.getElementById('link-tracking').addEventListener('click', function(event) {
        event.preventDefault();
        loadContent('tracking.html');
    });
</script>


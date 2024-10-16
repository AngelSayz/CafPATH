
    <title>Homepage</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="assets/js/main.js" defer></script>

    <header>
        <?php include 'views/includes/navbar.php'; ?>
    </header>
    <main>
        <div id="banner">
            <div id="banner-text">
                <h1>CAFPATH</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae est amet voluptates consectetur culpa, ad, reprehenderit nesciunt deserunt vero facere, iusto consequatur. Soluta voluptatum maxime ullam obcaecati enim ut dicta.</p>
            </div>
                <img src="assets/img/banner.png" alt="banner">
        </div>
        <h2>Services</h2>
        <section id="services">
            <article id="logistic">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-building-warehouse" width="48" height="48" viewBox="0 0 24 24" stroke-width="1.5" stroke="#00abfb" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <path d="M3 21v-13l9 -4l9 4v13" />
                    <path d="M13 13h4v8h-10v-6h6" />
                    <path d="M13 21v-9a1 1 0 0 0 -1 -1h-2a1 1 0 0 0 -1 1v3" />
                  </svg>
                <h3>Logistic</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae est amet voluptates consectetur culpa, ad, reprehenderit nesciunt deserunt vero facere, iusto consequatur. Soluta voluptatum maxime ullam obcaecati enim ut dicta.</p>
            </article>
            <article id="delivery">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-building-warehouse" width="48" height="48" viewBox="0 0 24 24" stroke-width="1.5" stroke="#00abfb" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <path d="M3 21v-13l9 -4l9 4v13"/>
                    <path d="M13 13h4v8h-10v-6h6"/>
                    <path d="M13 21v-9a1 1 0 0 0 -1 -1h-2a1 1 0 0 0 -1 1v3"/>
                  </svg>
                <h3>Delivery</h3>
                <p>Explicacion breve sobre las entregas.</p>
            </article>
            <article id="tracking">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-current-location" width="48" height="48" viewBox="0 0 24 24" stroke-width="1.5" stroke="#00abfb" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none " d="M0 0h24v24H0z " fill="none "/>
                    <path d="M12 12m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0 " />
                    <path d="M12 12m-8 0a8 8 0 1 0 16 0a8 8 0 1 0 -16 0 " />
                    <path d="M12 2l0 2 " />
                    <path d="M12 20l0 2 " />
                    <path d="M20 12l2 0 " />
                    <path d="M2 12l2 0 " />
                  </svg>
                <h3>Tracking</h3>
                <p>Explicacion breve sobre como se rastrean los pedidos.</p>
            </article>
        </section>

        <section id="how-it-works">
            <h2>How It Works</h2>
            <p>Explicacion detallada de como funciona en general nuestro sistema.</p>
        </section>

        <section id="testimonials">
            <h2>Testimonials</h2>
            <p>Zona de testimonios.</p>
        </section>

        <section id="news-updates">
            <h2>News & Updates</h2>
            <p>Blog actualizable sobre noticias y actualizaciones.</p>
        </section>
    </main>
    <?php include 'views/includes/footer.php'; ?>
</body>

</html>
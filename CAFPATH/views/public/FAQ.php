<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ Page</title>
    <link rel="stylesheet" href="../../assets/css/style.css">
    <script src="../../assets/js/main.js" defer></script>
</head>
<body>
    <main>
        <section class="faq-section">
            <div class="faq-item">
                <div class="faq-question">How can I track my shipment?</div>
                <div class="faq-answer">You can track your shipment using the tracking number provided in your confirmation email...</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">What should I do if my package is delayed?</div>
                <div class="faq-answer">If your package is delayed, please contact our support team for assistance...</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">Can I change the delivery address after the shipment has been dispatched?</div>
                <div class="faq-answer">Address changes can be requested within 24 hours of dispatch. Please contact support...</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">What are the shipping options available?</div>
                <div class="faq-answer">We offer standard, express, and overnight shipping options...</div>
            </div>
        </section>
    </main>

    <footer>
        <?php include '../partials/footerViews.php'; ?>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const faqItems = document.querySelectorAll('.faq-item');

            faqItems.forEach(item => {
                item.querySelector('.faq-question').addEventListener('click', () => {
                    item.classList.toggle('active');
                });
            });
        });
    </script>
</body>
</html>

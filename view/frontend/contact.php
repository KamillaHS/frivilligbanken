<?php
require_once("view/frontend/includes/header.php");
?>
<link rel="stylesheet" href="/view/frontend/css/contact.style.css">

<div id="contact-section1">
    <div id="contact-section1-content">
        <h2>KONTAKT OS</h2>
        <div id="line"></div>
    </div>
</div>

<div id="contact-section2">
    <div id="contact-section2-content">
        <div id="contact-map">
<!--            <div id="map"></div>-->
        </div>
        <div id="contact-information">
            <h3>TELEFON</h3>
            <p>
                12 23 56 78
            </p>
            <h3>TELEFONTIDER</h3>
            <p>
                Mandag - Fredag: 00-00
                <br>
                Lørdag - Søndag: 00-00
            </p>
            <h3>EMAIL</h3>
            <p>
                mail@mail.dk
            </p>
        </div>
    </div>
</div>

<div id="contact-section3">
    <div id="contact-section3-content">
        <div id="contact-form-box">
            <form id="contact-form" method="POST">
                <h3>KONTAKT OS</h3>
                <input id="input" type="text" placeholder="Navn">
                <input id="input" type="text" placeholder="Email">
                <input id="input" type="text" placeholder="Emne">
                <textarea placeholder="Besked"></textarea>
                <input id="submit-form" type="submit" value="Send">
            </form>
        </div>
    </div>
</div>

    <script>
        // Initialize and add the map
        function initMap() {
            // The location of Uluru
            var placement = {lat: 54.832154, lng: 11.894412};
            // The map, centered at Uluru
            var map = new google.maps.Map(
                document.getElementById('map'), {zoom: 10, center: placement});
            // The marker, positioned at Uluru
            var marker = new google.maps.Marker({position: placement, map: map});
        }
    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4nyoPHf-DUVGkeVzyBJMHEVVfTBTTEd0&callback=initMap">
    </script>

<?php
require_once("view/frontend/includes/footer.php");
?>
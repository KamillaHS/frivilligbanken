<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 29");
$query->execute();
$getcontactnum = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 30");
$query->execute();
$getcontactnumtimes = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 31");
$query->execute();
$getcontactemail = $query->fetch();
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
            <h3><?php echo $getcontactnum['FieldName'] ?></h3>
            <p>
                <?php echo $getcontactnum['FieldContent'] ?>
            </p>
            <h3><?php echo $getcontactnumtimes['FieldName'] ?></h3>
            <p>
                <?php echo $getcontactnumtimes['FieldContent'] ?>
            </p>
            <h3><?php echo $getcontactemail['FieldName'] ?></h3>
            <p>
                <?php echo $getcontactemail['FieldContent'] ?>
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
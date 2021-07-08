<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * 
                          FROM sponsor, area
                          WHERE sponsor.AreaID = area.AreaID");
$query->execute();
$getsponsors = $query->fetchAll();

?>
    <link rel="stylesheet" href="view/backend/css/employees.style.css">
    <link rel="stylesheet" href="view/backend/css/sponsors.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Sponsorere</h1>
            <div id="dashboard-section1">
                <p>
                    Liste over sponsorer.
                </p>
            </div>

            <h2>Brugere</h2>
            <div id="dashboard-section1" class="flex-box">
                <?php
                foreach($getsponsors as $sponsor) {
                    $sponsorID = $sponsor['SponsorID'];
                    $query = $dbCon->prepare("SELECT COUNT(GiftcardID) AS Giftcards
                                              FROM giftcard
                                              WHERE SponsorID = '$sponsorID'");
                    $query->execute();
                    $getGiftcards = $query->fetch();
                    ?>

                    <div id="employee-box">
                        <div id="sponsor-info">
                            <div id="employee-pic" style="background-image: url('<?php echo $sponsor['SponsorPic'] ?>')"></div>
                            <div id="employee-info">
                                <p><b>ID:</b> <?php echo $sponsor['SponsorID'] ?></p>
                                <p><b>Sponsor Navn:</b> <?php echo $sponsor['SponsorName'] ?></p>
                                <p><b>Mail:</b> <?php echo $sponsor['SponsorEmail'] ?></p>
                                <p><b>Telefon:</b> <?php echo $sponsor['Phone'] ?></p>
                                <p><b>CVR:</b> <?php echo $sponsor['SponsorCVR'] ?></p>
                                <p><b>Antal oprettede gavekort:</b> <?php echo $getGiftcards['Giftcards'] ?></p>
                                <p><b>By:</b> <?php echo $sponsor['PostalCode'] . ", " . $sponsor['City'] . " (" . $sponsor['AreaName'] . ")" ?> </p>
                                <br>
                                <p><b>Sidst Aktiv:</b> ?? </p>

                            </div>
                        </div>
                        <div id="buttons">
                            <a href="rediger_sponsor/<?php echo $sponsor['SponsorID'] ?>" id="edit"><i class="material-icons" disabled>settings</i></a>
                            <form method="POST" action="../../controller/SponsorController.php?action=DeleteSponsor&sponsorID=<?php echo $sponsor['SponsorID'] ?>">
                                <button id="delete" onclick="return confirm('Er du sikker på at du vil slette sponsoren med ID <?php echo $sponsor['SponsorID'] ?>')" disabled><i class="material-icons">delete</i></button>
                            </form>
                            
                        </div>
                    </div>

                    <?php
                }
                ?>
            </div>

        </div>
    </div>

    <script>
        document.querySelector("#file").onchange = function(){
            document.querySelector("#upload-file-name").textContent = this.files[0].name;
        };

        document.querySelector("#postalCode").onchange = function(){
            document.querySelector("#city").style.display = "block";
        };

        function showForm() {
            document.getElementById('add-employee').style.display = "block";
        }
    </script>


<?php require_once("view/backend/includes/footer.php"); ?>
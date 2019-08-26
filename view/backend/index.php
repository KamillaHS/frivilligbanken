<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT COUNT(volunteer.VolunteerID) AS amount
                                    FROM volunteer
                                    WHERE volunteer.AreaID = 1");
$query->execute();
$getvolunteer1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT COUNT(`union`.UnionID) AS amount
                                    FROM `union`
                                    WHERE `Union`.AreaID = 1");
$query->execute();
$getunion1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT COUNT(sponsor.SponsorID) AS amount
                                    FROM sponsor
                                    WHERE sponsor.AreaID = 1");
$query->execute();
$getsponsor1 = $query->fetch();

//$dbCon = dbCon($user, $pass);
//$query = $dbCon->prepare("SELECT COUNT(volunteer.VolunteerID) AS amount
//                                    FROM volunteer
//                                    WHERE volunteer.AreaID = 1");
//$query->execute();
//$getgiftcard1 = $query->fetch();

?>

<div id="dashboard">
    <?php require_once ("view/backend/includes/sidenav.php")?>
    <div id="dashboard-content">
        <h1>Dashboard: <?php echo $_SESSION['username'] ?></h1>
        <div id="dashboard-section1">
            <p>
                Her kommer der til at stå nogle detaljer omkring siden, samt en velkomst til brugeren.
            </p>
        </div>
        <div id="dashboard-section1">
            <div id="map-numbers">
                <?php
                for ($x = 1; $x <= 12; $x++) {
                    $dbCon = dbCon($user, $pass);
                    $query = $dbCon->prepare("SELECT * FROM area WHERE AreaID = '$x'");
                    $query->execute();
                    $getarea = $query->fetch();

                    $dbCon = dbCon($user, $pass);
                    $query = $dbCon->prepare("SELECT COUNT(volunteer.VolunteerID) AS amount
                                                        FROM volunteer
                                                        WHERE volunteer.AreaID = '$x'");
                    $query->execute();
                    $getvolunteer = $query->fetch();

                    $dbCon = dbCon($user, $pass);
                    $query = $dbCon->prepare("SELECT COUNT(`union`.UnionID) AS amount
                                                        FROM `union`
                                                        WHERE `union`.AreaID = '$x'");
                    $query->execute();
                    $getunion = $query->fetch();

                    $dbCon = dbCon($user, $pass);
                    $query = $dbCon->prepare("SELECT COUNT(sponsor.SponsorID) AS amount
                                                        FROM sponsor
                                                        WHERE sponsor.AreaID = '$x'");
                    $query->execute();
                    $getsponsor = $query->fetch();

                    $dbCon = dbCon($user, $pass);
                    $query = $dbCon->prepare("SELECT COUNT(giftcard.GiftcardID) AS amount
                                                        FROM giftcard, sponsor
                                                        WHERE giftcard.SponsorID = sponsor.SponsorID && sponsor.AreaID = '$x'");
                    $query->execute();
                    $getgiftcard = $query->fetch();

                    ?>
                    <div id="area1" class="map-area">
                        <h5><?php echo $getarea['AreaName'] ?></h5>
                        <div class="flex-class"><div id="color1"></div><p id="color1-text"><?php echo $getvolunteer['amount'] ?></p></div>
                        <div class="flex-class"><div id="color2"></div><p id="color2-text"><?php echo $getunion['amount'] ?></p></div>
                        <div class="flex-class"><div id="color3"></div><p id="color3-text"><?php echo $getsponsor['amount'] ?></p></div>
                        <div class="flex-class"><div id="color4"></div><p id="color4-text"><?php echo $getgiftcard['amount'] ?></p></div>
                    </div>
                    <?php
                }
                ?>
            </div>

            <div id="denmark-map" style="background-image: url('../../images/backend/Danmark-områder.png')">
                <div id="map-info">
                    <div id="color1"></div><p id="color1-text">Frivillige</p>
                    <div id="color2"></div><p id="color2-text">Foreninger</p>
                    <div id="color3"></div><p id="color3-text">Sponsorere</p>
                    <div id="color4"></div><p id="color4-text">Gavekort</p>
                </div>
            </div>

        </div>
    </div>
</div>


<?php require_once("view/backend/includes/footer.php"); ?>

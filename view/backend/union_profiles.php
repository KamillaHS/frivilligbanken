<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * 
                          FROM `union`, area
                          WHERE `union`.AreaID = area.AreaID");
$query->execute();
$getunions = $query->fetchAll();

?>
    <link rel="stylesheet" href="view/backend/css/employees.style.css">
    <link rel="stylesheet" href="view/backend/css/sponsors.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Sponsorere</h1>
            <div id="dashboard-section1">
                <p>
                    Liste af foreninger.
                </p>
            </div>

            <h2>Brugere</h2>
            <div id="dashboard-section1" class="flex-box">
                <?php
                foreach($getunions as $union) {
                    $unionID = $union['UnionID'];
                    $query = $dbCon->prepare("SELECT COUNT(JobID) AS Jobs
                                              FROM job
                                              WHERE UnionID = '$unionID'");
                    $query->execute();
                    $getJobs = $query->fetch();
                    ?>

                    <div id="employee-box">
                        <div id="sponsor-info">
                            <div id="employee-pic" style="background-image: url('<?php echo $union['UnionLogo'] ?>')"></div>
                            <div id="employee-info">
                                <p><b>ID:</b> <?php echo $union['UnionID'] ?></p>
                                <p><b>Sponsor Navn:</b> <?php echo $union['UnionName'] ?></p>
                                <p><b>Mail:</b> <?php echo $union['UnionEmail'] ?></p>
                                <p><b>Telefon:</b> <?php echo $union['Phone'] ?></p>
                                <p><b>CVR:</b> <?php echo $union['UnionCVR'] ?></p>
                                <p><b>Antal oprettede jobs:</b> <?php echo $getJobs['Jobs'] ?></p>
                                <p><b>By:</b> <?php echo $union['PostalCode'] . ", " . $union['City'] . " (" . $union['AreaName'] . ")" ?> </p>
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
<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * 
                          FROM volunteer, area
                          WHERE volunteer.AreaID = area.AreaID");
$query->execute();
$getvolunteers = $query->fetchAll();

?>
    <link rel="stylesheet" href="view/backend/css/employees.style.css">
    <link rel="stylesheet" href="view/backend/css/sponsors.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Frivillig Profiler</h1>
            <div id="dashboard-section1">
                <p>
                   Liste af frivillig profiler
                </p>
            </div>

            <h2>Profiler</h2>
            <div id="dashboard-section1" class="flex-box">
                <?php
                foreach($getvolunteers as $volunteer) {
                    ?>

                    <div id="employee-box">
                        <div id="sponsor-info">
                            <div id="employee-pic" style="background-image: url('<?php echo $volunteer['VolunteerPic'] ?>')"></div>
                            <div id="employee-info">
                                <p><b>ID:</b> <?php echo $volunteer['VolunteerID'] ?></p>
                                <p><b>Navn:</b> <?php echo $volunteer['FullName'] ?></p>
                                <p><b>By:</b> <?php echo $volunteer['PostalCode'] . ", " . $volunteer['City'] . " (" . $volunteer['AreaName'] . ")" ?> </p>
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
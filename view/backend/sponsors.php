<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM sponsor");
$query->execute();
$getsponsors = $query->fetchAll();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT SponsorID, SponsorName, SponsorCVR, SponsorEmail, Address, City, PostalCode, Phone, Website, SponsorPic, `Status`, area.AreaName 
                                    FROM `sponsor`, area
                                    WHERE area.AreaID = sponsor.AreaID AND Status = 'Guld'");
$query->execute();
$getgoldsponsors = $query->fetchAll();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT SponsorID, SponsorName, SponsorCVR, SponsorEmail, Address, City, PostalCode, Phone, Website, SponsorPic, `Status`, area.AreaName 
                                    FROM `sponsor`, area
                                    WHERE area.AreaID = sponsor.AreaID AND Status = 'Sølv'");
$query->execute();
$getsilversponsors = $query->fetchAll();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT SponsorID, SponsorName, SponsorCVR, SponsorEmail, Address, City, PostalCode, Phone, Website, SponsorPic, `Status`, area.AreaName 
                                    FROM `sponsor`, area
                                    WHERE area.AreaID = sponsor.AreaID AND Status = 'Bronze'");
$query->execute();
$getbronzesponsors = $query->fetchAll();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT `PostalCode`, `CityName` FROM denmarkcities");
$query->execute();
$getpostalcodes = $query->fetchAll();

?>
    <link rel="stylesheet" href="view/backend/css/employees.style.css">
    <link rel="stylesheet" href="view/backend/css/sponsors.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Sponsorere</h1>
            <div id="dashboard-section1">
                <p>
                    Her kommer der til at være en liste over sponsorere.
                    Disse sponsorere er hentet fra app delen af databasen.
                    Det vil derfor kun være muligt at tilføje/ændre/slette sponsorere på denne side, indtil appen er oppe at gøre.
                    En funktion der fortsat vil være på siden, er at man kan vælge om sponsorere skal være "highligted" i footeren, eller om det skal være randomt.
                </p>
            </div>

            <div id="dashboard-section1">
                <a id="add" class="waves-effect waves-light btn" onclick="showForm()"><i class="material-icons left">person_add</i>Tilføj Sponsor</a>
                <form id="add-employee" method="POST" enctype="multipart/form-data" action="../../controller/SponsorController.php?action=AddSponsor">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file">
                        <div id="upload-file-name"></div>
                    </div>
                    <br>
                    <label>Du kan altid ændre billedet senere, ved at redigere den oprettede sponsor.</label>
                    <br><br>

                    <input type="text" name="sponsorName" placeholder="Sponsor Navn/Firma" required>
                    <input type="text" name="sponsorCVR" placeholder="CVR nummer" required>
                    <input type="email" name="sponsorEmail" placeholder="Email" required>
                    <input type="text" name="address" placeholder="Adresse" required>
                    <select class="browser-default" name="postalCode">
                        <option value="0" selected disabled>Postnummer, By</option>
                        <?php
                        foreach ($getpostalcodes as $postalCode) {
                            ?>
                            <option value="<?php echo $postalCode['PostalCode'] ?>">
                                <?php echo $postalCode['PostalCode'] . ", " . $postalCode['CityName'] ?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
<!--                    <input type="text" name="postalCode" id="postalCode" placeholder="Postnummer" required>-->
<!--                    <input type="text" name="city" id="city" placeholder="By">-->
                    <input type="text" name="phone" placeholder="Telefon" required>
                    <input type="text" name="website" placeholder="Hjemmeside" >
<!--                    <input type="text" name="area" placeholder="Område" >-->

                    <input type="submit" name="addSponsor">
                </form>
            </div>

            <h2>Guld Sponsorere</h2>
            <div id="dashboard-section1" class="flex-box">
                <?php
                foreach($getgoldsponsors as $sponsor) {
                    ?>

                    <div id="employee-box">
                        <div id="sponsor-info">
                            <div id="employee-pic" style="background-image: url('<?php echo $sponsor['SponsorPic'] ?>')"></div>
                            <div id="employee-info">
                                <p><b>ID:</b> <?php echo $sponsor['SponsorID'] ?></p>
                                <p><b>Navn/Firma:</b> <?php echo $sponsor['SponsorName'] ?></p>
                                <p><b>CVR nummer:</b> <?php echo $sponsor['SponsorCVR'] ?></p>
                                <p><b>Email:</b> <?php echo $sponsor['SponsorEmail'] ?></p>
                                <p><b>Adresse:</b> <?php echo $sponsor['Address'] ?>, <?php echo $sponsor['PostalCode'] ?> <?php echo $sponsor['City'] ?></p>
                                <p><b>Telefon:</b> <?php echo $sponsor['Phone'] ?></p>
                                <p><b>Hjemmeside:</b> <?php echo $sponsor['Website'] ?></p>
                                <p><b>Område:</b> <?php echo $sponsor['AreaName'] ?></p>
                            </div>
                        </div>
                        <div id="buttons">
                            <a href="rediger_sponsor/<?php echo $sponsor['SponsorID'] ?>" id="edit"><i class="material-icons">settings</i></a>
                            <form method="POST" action="../../controller/SponsorController.php?action=DeleteSponsor&sponsorID=<?php echo $sponsor['SponsorID'] ?>">
                                <button id="delete" onclick="return confirm('Er du sikker på at du vil slette sponsoren med ID <?php echo $sponsor['SponsorID'] ?>')"><i class="material-icons">delete</i></button>
                            </form>
                            <div id="sponsor-status">
                                <?php echo $sponsor['Status'] ?>
                            </div>
                        </div>
                    </div>

                    <?php
                }
                ?>
            </div>

            <h2>Sølv Sponsorere</h2>
            <div id="dashboard-section1" class="flex-box">
                <?php
                foreach($getsilversponsors as $sponsor) {
                    ?>

                    <div id="employee-box">
                        <div id="sponsor-info">
                            <div id="employee-pic" style="background-image: url('<?php echo $sponsor['SponsorPic'] ?>')"></div>
                            <div id="employee-info">
                                <p><b>ID:</b> <?php echo $sponsor['SponsorID'] ?></p>
                                <p><b>Navn/Firma:</b> <?php echo $sponsor['SponsorName'] ?></p>
                                <p><b>CVR nummer:</b> <?php echo $sponsor['SponsorCVR'] ?></p>
                                <p><b>Email:</b> <?php echo $sponsor['SponsorEmail'] ?></p>
                                <p><b>Adresse:</b> <?php echo $sponsor['Address'] ?>, <?php echo $sponsor['PostalCode'] ?> <?php echo $sponsor['City'] ?></p>
                                <p><b>Telefon:</b> <?php echo $sponsor['Phone'] ?></p>
                                <p><b>Hjemmeside:</b> <?php echo $sponsor['Website'] ?></p>
                                <p><b>Område:</b> <?php echo $sponsor['AreaName'] ?></p>
                            </div>
                        </div>
                        <div id="buttons">
                            <a href="rediger_sponsor/<?php echo $sponsor['SponsorID'] ?>" id="edit"><i class="material-icons">settings</i></a>
                            <form method="POST" action="../../controller/SponsorController.php?action=DeleteSponsor&sponsorID=<?php echo $sponsor['SponsorID'] ?>">
                                <button id="delete" onclick="return confirm('Er du sikker på at du vil slette sponsoren med ID <?php echo $sponsor['SponsorID'] ?>')"><i class="material-icons">delete</i></button>
                            </form>
                            <div id="sponsor-status">
                                <?php echo $sponsor['Status'] ?>
                            </div>
                        </div>
                    </div>

                    <?php
                }
                ?>
            </div>

            <h2>Bronze Sponsorere</h2>
            <div id="dashboard-section1" class="flex-box">
                <?php
                foreach($getbronzesponsors as $sponsor) {
                    ?>

                    <div id="employee-box">
                        <div id="sponsor-info">
                            <div id="employee-pic" style="background-image: url('<?php echo $sponsor['SponsorPic'] ?>')"></div>
                            <div id="employee-info">
                                <p><b>ID:</b> <?php echo $sponsor['SponsorID'] ?></p>
                                <p><b>Navn/Firma:</b> <?php echo $sponsor['SponsorName'] ?></p>
                                <p><b>CVR nummer:</b> <?php echo $sponsor['SponsorCVR'] ?></p>
                                <p><b>Email:</b> <?php echo $sponsor['SponsorEmail'] ?></p>
                                <p><b>Adresse:</b> <?php echo $sponsor['Address'] ?>, <?php echo $sponsor['PostalCode'] ?> <?php echo $sponsor['City'] ?></p>
                                <p><b>Telefon:</b> <?php echo $sponsor['Phone'] ?></p>
                                <p><b>Hjemmeside:</b> <?php echo $sponsor['Website'] ?></p>
                                <p><b>Område:</b> <?php echo $sponsor['AreaName'] ?></p>
                            </div>
                        </div>
                        <div id="buttons">
                            <a href="rediger_sponsor/<?php echo $sponsor['SponsorID'] ?>" id="edit"><i class="material-icons">settings</i></a>
                            <form method="POST" action="../../controller/SponsorController.php?action=DeleteSponsor&sponsorID=<?php echo $sponsor['SponsorID'] ?>">
                                <button id="delete" onclick="return confirm('Er du sikker på at du vil slette sponsoren med ID <?php echo $sponsor['SponsorID'] ?>')"><i class="material-icons">delete</i></button>
                            </form>
                            <div id="sponsor-status">
                                <?php echo $sponsor['Status'] ?>
                            </div>
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
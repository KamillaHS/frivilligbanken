<?php
require_once("view/backend/includes/header.php");

//$employeeID = $_GET['id'];
$sponsorID = $args[0];

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `sponsor` WHERE SponsorID = '$sponsorID'");
$query->execute();
$getsponsor = $query->fetch();



?>
<link rel="stylesheet" href="view/backend/css/employees.style.css">
<link rel="stylesheet" href="../../../view/backend/css/employees.style.css">

<div id="dashboard">
    <?php require_once ("view/backend/includes/sidenav.php")?>
    <div id="dashboard-content">
        <h1>Rediger sponsor <?php echo $getsponsor['SponsorID'] ?>'s billede</h1>
        <div id="dashboard-section1">
            Medarbejder nummer: <?php echo $getsponsor['SponsorID'] ?>

            <div id="employee-pic" style="background-image: url('<?php echo $getsponsor['SponsorPic'] ?>')"></div>
            <form method="POST" enctype="multipart/form-data" action="../../../controller/SponsorController.php?action=EditSponsorPic&sponsorID=<?php echo $getsponsor['SponsorID'] ?>">
                <div class="upload-btn-wrapper">
                    <div id="imgUpload">Upload billede</div>
                    <input name="imgfile" type="file" id="file" value="<?php echo $getsponsor['SponsorPic'] ?>">
                    <div id="upload-file-name"><?php echo $getsponsor['SponsorPic'] ?></div>
                </div>
                <input type="submit" value="Opdater Billede">
            </form>
        </div>

        <h1>Rediger medarbejder <?php echo $getsponsor['SponsorID'] ?>'s information</h1>
        <div id="dashboard-section1">
            <form id="edit-employee" method="POST" action="../../../controller/SponsorController.php?action=EditSponsorInfo&sponsorID=<?php echo $getsponsor['SponsorID'] ?>">
                <input type="text" placeholder="Sponsor Navn/Firma" name="name" value="<?php echo $getsponsor['SponsorName'] ?>">
                <input type="number" placeholder="CVR Nummer" name="cvr" value="<?php echo $getsponsor['SponsorCVR'] ?>">
                <input type="email" placeholder="Sponsor Email" name="email" value="<?php echo $getsponsor['SponsorEmail'] ?>">

                <input type="text" placeholder="Adresse" name="address" value="<?php echo $getsponsor['Address'] ?>">
                <input type="text" placeholder="By" name="city" value="<?php echo $getsponsor['City'] ?>">
                <input type="text" placeholder="Postnummer" name="postalCode" value="<?php echo $getsponsor['PostalCode'] ?>">
                <input type="text" placeholder="Telefon" name="phone" value="<?php echo $getsponsor['Phone'] ?>">
                <input type="text" placeholder="Hjemmside" name="webpage" value="<?php echo $getsponsor['Website'] ?>">
                <div class="input-field col s12">
                    <select class="browser-default" name="status">
                        <option value="" disabled <?php if($getsponsor['Status'] == NULL) { echo "selected"; } ?>>Status/Rang</option>
                        <option value="Guld" <?php if($getsponsor['Status'] == "Guld") { echo "selected"; } ?>>Guld</option>
                        <option value="Sølv" <?php if($getsponsor['Status'] == "Sølv") { echo "selected"; } ?>>Sølv</option>
                        <option value="Bronze" <?php if($getsponsor['Status'] == "Bronze") { echo "selected"; } ?>>Bronze</option>
                    </select>
                </div>

                <br><br>
                <input type="submit" value="Gem ændringer" name="editEmployee">
            </form>

        </div>




    </div>
</div>

<script>
    document.querySelector("#file").onchange = function(){
        document.querySelector("#upload-file-name").textContent = this.files[0].name;
    };
</script>

<?php require_once("view/backend/includes/footer.php"); ?>

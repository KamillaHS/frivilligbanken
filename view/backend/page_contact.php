<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 29");
$query->execute();
$getcontactnum = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 30");
$query->execute();
$getcontactnumtime = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 31");
$query->execute();
$getcontactemail = $query->fetch();

if(isset($_POST['updateContactNum'])) {
    $headline = $_POST['contact-headline1'];
    $content = $_POST['contact-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 29";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&kontakt'</script>";
}

if(isset($_POST['updateContactNumTime'])) {
    $headline = $_POST['contact-headline2'];
    $content = $_POST['contact-text2'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 30";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&kontakt'</script>";
}

if(isset($_POST['updateContactEmail'])) {
    $headline = $_POST['contact-headline3'];
    $content = $_POST['contact-text3'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 31";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&kontakt'</script>";
}

?>

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Kontakt</h1>
            <div id="dashboard-section1">
                <p>
                    Det bliver her muligt at ændre tekstfelt(r) på siden "Kontakt".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getcontactnum['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="contact-headline1" value="<?php echo $getcontactnum['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="contact-text1" id="" cols="30" rows="10"><?php echo $getcontactnum['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateContactNum" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getcontactnumtime['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="contact-headline1" value="<?php echo $getcontactnumtime['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="contact-text1" id="" cols="30" rows="10"><?php echo $getcontactnumtime['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateContactNumTime" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getcontactemail['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="contact-headline1" value="<?php echo $getcontactemail['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="contact-text1" id="" cols="30" rows="10"><?php echo $getcontactemail['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateContactEmail" value="Gem ændringer">
                </form>
                </p>
            </div>

        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
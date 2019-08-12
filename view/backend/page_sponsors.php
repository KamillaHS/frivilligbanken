<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 4");
$query->execute();
$getsponsortext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 15");
$query->execute();
$getsponsortext2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 16");
$query->execute();
$getsponsortext3 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 17");
$query->execute();
$getsponsortext4 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 18");
$query->execute();
$getsponsortext5 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 19");
$query->execute();
$getsponsortext6 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 20");
$query->execute();
$getsponsortext7 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 21");
$query->execute();
$getsponsortext8 = $query->fetch();

if(isset($_POST['updateSponsorText1'])) {
    $headline = $_POST['sponsor-headline1'];
    $content = $_POST['sponsor-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 4";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}

if(isset($_POST['updateSponsorText2'])) {
    $headline = $_POST['sponsor-headline2'];
    $content = $_POST['sponsor-text2'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 15";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}

if(isset($_POST['updateSponsorText3'])) {
    $headline = $_POST['sponsor-headline3'];
    $content = $_POST['sponsor-text3'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 16";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}

if(isset($_POST['updateSponsorText4'])) {
    $headline = $_POST['sponsor-headline4'];
    $content = $_POST['sponsor-text4'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 17";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}

if(isset($_POST['updateSponsorText5'])) {
    $headline = $_POST['sponsor-headline5'];
    $content = $_POST['sponsor-text5'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 18";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}

if(isset($_POST['updateSponsorText6'])) {
    $headline = $_POST['sponsor-headline6'];
    $content = $_POST['sponsor-text6'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 19";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}

if(isset($_POST['updateSponsorText7'])) {
    $headline = $_POST['sponsor-headline7'];
    $content = $_POST['sponsor-text7'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 20";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}

if(isset($_POST['updateSponsorText8'])) {
    $headline = $_POST['sponsor-headline8'];
    $content = $_POST['sponsor-text8'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 21";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_sponsorere'</script>";
}


?>

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Værd at vide - Sponsorere</h1>
            <div id="dashboard-section1">
                <p>
                    Det bliver her muligt at ændre tekstfelt(r) på siden "Værd at vide - Sponsorere".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline1" value="<?php echo $getsponsortext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text1" id="" cols="30" rows="10"><?php echo $getsponsortext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText1" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline2" value="<?php echo $getsponsortext2['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text2" id="" cols="30" rows="10"><?php echo $getsponsortext2['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText2" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext3['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline3" value="<?php echo $getsponsortext3['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text3" id="" cols="30" rows="10"><?php echo $getsponsortext3['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText3" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext4['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline4" value="<?php echo $getsponsortext4['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text4" id="" cols="30" rows="10"><?php echo $getsponsortext4['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText4" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext5['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline5" value="<?php echo $getsponsortext5['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text5" id="" cols="30" rows="10"><?php echo $getsponsortext5['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText5" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext6['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline6" value="<?php echo $getsponsortext6['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text6" id="" cols="30" rows="10"><?php echo $getsponsortext6['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText6" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext7['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline7" value="<?php echo $getsponsortext7['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text7" id="" cols="30" rows="10"><?php echo $getsponsortext7['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText7" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsortext8['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsor-headline8" value="<?php echo $getsponsortext8['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsor-text8" id="" cols="30" rows="10"><?php echo $getsponsortext8['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorText8" value="Gem ændringer">
                </form>
                </p>
            </div>


        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
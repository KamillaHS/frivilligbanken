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

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 32");
$query->execute();
$getcontactaddress = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 33");
$query->execute();
$getsocial1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 34");
$query->execute();
$getsocial2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 35");
$query->execute();
$getsocial3 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 13");
$query->execute();
$getsocialimg1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 14");
$query->execute();
$getsocialimg2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 15");
$query->execute();
$getsocialimg3 = $query->fetch();

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

if(isset($_POST['updateContactAddress'])) {
    $headline = $_POST['contact-headline4'];
    $content = $_POST['contact-text4'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 32";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&kontakt'</script>";
}

if(isset($_POST['submitSocial1'])) {
    $headline = $_POST['social-name1'];
    $content = $_POST['social-link1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 33";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&kontakt'</script>";
}

if(isset($_POST['submitSocial2'])) {
    $headline = $_POST['social-name2'];
    $content = $_POST['social-link2'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 34";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&kontakt'</script>";
}

if(isset($_POST['submitSocial3'])) {
    $headline = $_POST['social-name3'];
    $content = $_POST['social-link3'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 35";
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
                    <input type="text" name="contact-headline2" value="<?php echo $getcontactnumtime['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="contact-text2" id="" cols="30" rows="10"><?php echo $getcontactnumtime['FieldContent'] ?></textarea>
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
                    <input type="text" name="contact-headline3" value="<?php echo $getcontactemail['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="contact-text3" id="" cols="30" rows="10"><?php echo $getcontactemail['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateContactEmail" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getcontactaddress['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="contact-headline4" value="<?php echo $getcontactaddress['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="contact-text4" id="" cols="30" rows="10"><?php echo $getcontactaddress['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateContactAddress" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Sociale ikoner</h2>
            <div id="dashboard-section1">
                <form id="social1-form" method="POST" action="">
                    <img src="<?php
                    if($getsocial1['FieldName'] == 'Facebook' || $getsocial1['FieldName'] == 'facebook') {
                        echo $getsocialimg1['Image'];
                    } elseif($getsocial1['FieldName'] == 'LinkedIn' || $getsocial1['FieldName'] == 'Linkedin' || $getsocial1['FieldName'] == 'linkedIn' || $getsocial1['FieldName'] == 'linkedin') {
                        echo $getsocialimg2['Image'];
                    } elseif($getsocial1['FieldName'] == 'Instagram' || $getsocial1['FieldName'] == 'instagram') {
                        echo $getsocialimg3['Image'];
                    }
                    ?>" alt="">
                    <input type="text" name="social-name1" value="<?php echo $getsocial1['FieldName'] ?>">
                    <input type="text" name="social-link1" value="<?php echo $getsocial1['FieldContent'] ?>">
                    <label for="">Uden "http://" eller "https://"</label><br><br>
                    <input type="submit" name="submitSocial1" value="Gem ændringer">
                </form>

                <br><br>

                <form id="social2-form" method="POST" action="">
                    <img src="<?php
                    if($getsocial2['FieldName'] == 'Facebook' || $getsocial2['FieldName'] == 'facebook') {
                        echo $getsocialimg1['Image'];
                    } elseif($getsocial2['FieldName'] == 'LinkedIn' || $getsocial2['FieldName'] == 'Linkedin' || $getsocial2['FieldName'] == 'linkedIn' || $getsocial2['FieldName'] == 'linkedin') {
                        echo $getsocialimg2['Image'];
                    } elseif($getsocial2['FieldName'] == 'Instagram' || $getsocial2['FieldName'] == 'instagram') {
                        echo $getsocialimg3['Image'];
                    }
                    ?>" alt="">
                    <input type="text" name="social-name2" value="<?php echo $getsocial2['FieldName'] ?>">
                    <input type="text" name="social-link2" value="<?php echo $getsocial2['FieldContent'] ?>">
                    <label for="">Uden "http://" eller "https://"</label><br><br>
                    <input type="submit" name="submitSocial2" value="Gem ændringer">
                </form>

                <br><br>

                <form id="social3-form" method="POST" action="">
                    <img src="<?php
                    if($getsocial3['FieldName'] == 'Facebook' || $getsocial3['FieldName'] == 'facebook') {
                        echo $getsocialimg1['Image'];
                    } elseif($getsocial3['FieldName'] == 'LinkedIn' || $getsocial3['FieldName'] == 'Linkedin' || $getsocial3['FieldName'] == 'linkedIn' || $getsocial3['FieldName'] == 'linkedin') {
                        echo $getsocialimg2['Image'];
                    } elseif($getsocial3['FieldName'] == 'Instagram' || $getsocial3['FieldName'] == 'instagram') {
                        echo $getsocialimg3['Image'];
                    }
                    ?>" alt="">
                    <input type="text" name="social-name3" value="<?php echo $getsocial3['FieldName'] ?>">
                    <input type="text" name="social-link3" value="<?php echo $getsocial3['FieldContent'] ?>">
                    <label for="">Uden "http://" eller "https://"</label><br><br>
                    <input type="submit" name="submitSocial3" value="Gem ændringer">
                </form>


            </div>

        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
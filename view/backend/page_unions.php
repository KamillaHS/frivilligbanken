<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 3");
$query->execute();
$getuniontext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 8");
$query->execute();
$getuniontext2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 9");
$query->execute();
$getuniontext3 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 10");
$query->execute();
$getuniontext4 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 11");
$query->execute();
$getuniontext5 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 12");
$query->execute();
$getuniontext6 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 13");
$query->execute();
$getuniontext7 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 14");
$query->execute();
$getuniontext8 = $query->fetch();


if(isset($_POST['updateUnionText1'])) {
    $headline = $_POST['union-headline1'];
    $content = $_POST['union-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 3";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText2'])) {
    $headline = $_POST['union-headline2'];
    $content = $_POST['union-text2'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 8";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText3'])) {
    $headline = $_POST['union-headline3'];
    $content = $_POST['union-text3'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 9";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText4'])) {
    $headline = $_POST['union-headline4'];
    $content = $_POST['union-text4'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 10";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText5'])) {
    $headline = $_POST['union-headline5'];
    $content = $_POST['union-text5'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 11";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText6'])) {
    $headline = $_POST['union-headline6'];
    $content = $_POST['union-text6'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 12";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText7'])) {
    $headline = $_POST['union-headline7'];
    $content = $_POST['union-text7'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 13";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText8'])) {
    $headline = $_POST['union-headline8'];
    $content = $_POST['union-text8'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 14";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

?>

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Værd at vide - Foreninger</h1>
            <div id="dashboard-section1">
                <p>
                    Det bliver her muligt at ændre tekstfelt(r) på siden "Værd at vide - Foreninger".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline1" value="<?php echo $getuniontext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text1" id="" cols="30" rows="10"><?php echo $getuniontext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText1" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline2" value="<?php echo $getuniontext2['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text3" id="" cols="30" rows="10"><?php echo $getuniontext2['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText2" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext3['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline3" value="<?php echo $getuniontext3['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text3" id="" cols="30" rows="10"><?php echo $getuniontext3['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText3" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext4['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline4" value="<?php echo $getuniontext4['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text4" id="" cols="30" rows="10"><?php echo $getuniontext4['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText4" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext5['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline6" value="<?php echo $getuniontext5['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text6" id="" cols="30" rows="10"><?php echo $getuniontext5['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText6" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext7['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline7" value="<?php echo $getuniontext7['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text7" id="" cols="30" rows="10"><?php echo $getuniontext7['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText7" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext8['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline8" value="<?php echo $getuniontext8['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text8" id="" cols="30" rows="10"><?php echo $getuniontext8['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText8" value="Gem ændringer">
                </form>
                </p>
            </div>

        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
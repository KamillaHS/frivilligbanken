<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 1");
$query->execute();
$getfronttext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 2");
$query->execute();
$getfronttext2 = $query->fetch();



if(isset($_POST['updateFrontText1'])) {
    $headline = $_POST['front-headline1'];
    $content = $_POST['front-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 1";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&forside'</script>";
}

?>

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Forside</h1>
            <div id="dashboard-section1">
                <p>
                    Det er her muligt at ændre tekstfelt(r) på siden "Forside".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getfronttext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="front-headline1" value="<?php echo $getfronttext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="front-text1" id="" cols="30" rows="10"><?php echo $getfronttext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateFrontText1" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getfronttext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="front-headline2" placeholder="<?php echo $getfronttext2['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="front-text2" id="" cols="30" rows="10"><?php echo $getfronttext2['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" value="Gem ændringer">
                </form>
                </p>
            </div>
        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
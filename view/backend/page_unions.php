<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 3");
$query->execute();
$getuniontext1 = $query->fetch();

if(isset($_POST['updateUnionText1'])) {
    $headline = $_POST['union-headline1'];
    $content = $_POST['union-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 3";
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
        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
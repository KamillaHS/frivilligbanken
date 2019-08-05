<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 5");
$query->execute();
$getvolunteertext1 = $query->fetch();

if(isset($_POST['updateVolunteerText1'])) {
    $headline = $_POST['volunteer-headline1'];
    $content = $_POST['volunteer-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 5";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

?>

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Værd at vide - Frivillige</h1>
            <div id="dashboard-section1">
                <p>
                    Det bliver her muligt at ændre tekstfelt(r) på siden "Værd at vide - Frivillige".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline1" value="<?php echo $getvolunteertext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text1" id="" cols="30" rows="10"><?php echo $getvolunteertext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText1" value="Gem ændringer">
                </form>
                </p>
            </div>
        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
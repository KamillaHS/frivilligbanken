<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 4");
$query->execute();
$getsponsortext1 = $query->fetch();

if(isset($_POST['updateSponsorText1'])) {
    $headline = $_POST['sponsor-headline1'];
    $content = $_POST['sponsor-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 4";
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
        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
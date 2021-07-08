<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 7");
$query->execute();
$getsponsorlisttext1 = $query->fetch();

if(isset($_POST['updateSponsorListText1'])) {
    $headline = $_POST['sponsorList-headline1'];
    $content = $_POST['sponsorList-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 7";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&sponsorere'</script>";
}

?>

    <div id="dashboard" class="edit-frontend">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Sponsorere</h1>
            <div id="dashboard-section1">
                <p>
                    Det bliver her muligt at ændre tekstfelt(r) på siden "Sponsorere".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getsponsorlisttext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="sponsorList-headline1" value="<?php echo $getsponsorlisttext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="sponsorList-text1" id="" cols="30" rows="10"><?php echo $getsponsorlisttext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateSponsorListText1" value="Gem ændringer">
                </form>
                </p>
            </div>
        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 6");
$query->execute();
$getabouttext1 = $query->fetch();

if(isset($_POST['updateAboutText1'])) {
    $headline = $_POST['about-headline1'];
    $content = $_POST['about-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 6";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&om'</script>";
}

?>

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Hvem er Vi</h1>
            <div id="dashboard-section1">
                <p>
                    Det bliver her muligt at ændre tekstfelt(r) på siden "Hvem er Vi".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getabouttext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="about-headline1" value="<?php echo $getabouttext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="about-text1" id="" cols="30" rows="10"><?php echo $getabouttext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateAboutText1" value="Gem ændringer">
                </form>
                </p>
            </div>
        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
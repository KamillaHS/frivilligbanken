<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 5");
$query->execute();
$getvolunteertext = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 22");
$query->execute();
$getvolunteertext2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 23");
$query->execute();
$getvolunteertext3 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 24");
$query->execute();
$getvolunteertext4 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 25");
$query->execute();
$getvolunteertext5 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 26");
$query->execute();
$getvolunteertext6 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 27");
$query->execute();
$getvolunteertext7 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 28");
$query->execute();
$getvolunteertext8 = $query->fetch();

?>

    <link rel="stylesheet" href="/view/frontend/css/threeInOne.style.css">

    <div id="info-section1">
        <div id="info-section1-content">
            <h2><h2><?php echo $getvolunteertext['FieldName'] ?></h2></h2>
            <div id="line"></div>
            <p id="info-text">
                <?php
                echo $getvolunteertext['FieldContent']
                ?>
            </p>
        </div>
    </div>

    <div id="info-section2">
        <div id="info-section2-content">
            <h3>FORDELE</h3>
            <div id="line"></div>
            <div id="info-section-info">
                <div id="info1">
                    <img src="https://picsum.photos/id/524/300/200" alt="">
                    <h4><?php echo $getvolunteertext2['FieldName'] ?></h4>
                    <p><?php echo $getvolunteertext2['FieldContent'] ?></p>
                </div>
                <div id="info2">
                    <img src="https://picsum.photos/id/237/300/200" alt="">
                    <h4><?php echo $getvolunteertext3['FieldName'] ?></h4>
                    <p><?php echo $getvolunteertext3['FieldContent'] ?></p>
                </div>
                <div id="info3">
                    <img src="https://picsum.photos/id/902/300/200" alt="">
                    <h4><?php echo $getvolunteertext4['FieldName'] ?></h4>
                    <p><?php echo $getvolunteertext4['FieldContent'] ?></p>
                </div>
            </div>
        </div>
    </div>

    <div id="info-section3">
        <div id="info-section3-content">
            <h3><?php echo $getvolunteertext5['FieldName'] ?></h3>
            <div id="line"></div>
            <p><?php echo $getvolunteertext5['FieldContent'] ?></p>
            <div id="step1-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">1</p></div></div>
                <p id="step-text"><?php echo $getvolunteertext6['FieldContent'] ?></p>
            </div>
            <div id="step2-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">2</p></div></div>
                <p id="step-text"><?php echo $getvolunteertext7['FieldContent'] ?></p>
            </div>
            <div id="step3-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">3</p></div></div>
                <p id="step-text"><?php echo $getvolunteertext8['FieldContent'] ?></p>
            </div>
        </div>
    </div>


<?php
require_once("view/frontend/includes/footer.php");
?>
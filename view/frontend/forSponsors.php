<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 4");
$query->execute();
$getsponsortext = $query->fetch();

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

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 6");
$query->execute();
$getimage1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 7");
$query->execute();
$getimage2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 8");
$query->execute();
$getimage3 = $query->fetch();
?>

    <link rel="stylesheet" href="/view/frontend/css/threeInOne.style.css">

    <div id="info-section1">
        <div id="info-section1-content">
            <h2><h2><?php echo $getsponsortext['FieldName'] ?></h2></h2>
            <div id="line"></div>
            <p id="info-text">
                <?php
                echo $getsponsortext['FieldContent']
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
                    <img src="<?php echo $getimage1['Image'] ?>" alt="">
                    <h4><?php echo $getsponsortext2['FieldName'] ?></h4>
                    <p><?php echo $getsponsortext2['FieldContent'] ?></p>
                </div>
                <div id="info2">
                    <img src="<?php echo $getimage2['Image'] ?>" alt="">
                    <h4><?php echo $getsponsortext3['FieldName'] ?></h4>
                    <p><?php echo $getsponsortext3['FieldContent'] ?></p>
                </div>
                <div id="info3">
                    <img src="<?php echo $getimage3['Image'] ?>" alt="">
                    <h4><?php echo $getsponsortext4['FieldName'] ?></h4>
                    <p><?php echo $getsponsortext4['FieldContent'] ?></p>
                </div>
            </div>
        </div>
    </div>

    <div id="info-section3">
        <div id="info-section3-content">
            <h3><?php echo $getsponsortext5['FieldName'] ?></h3>
            <div id="line"></div>
            <p><?php echo $getsponsortext5['FieldContent'] ?></p>
            <div id="step1-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">1</p></div></div>
                <p id="step-text"><?php echo $getsponsortext6['FieldContent'] ?></p>
            </div>
            <div id="step2-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">2</p></div></div>
                <p id="step-text"><?php echo $getsponsortext7['FieldContent'] ?></p>
            </div>
            <div id="step3-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">3</p></div></div>
                <p id="step-text"><?php echo $getsponsortext8['FieldContent'] ?></p>
            </div>
        </div>
    </div>

<?php
require_once("view/frontend/includes/footer.php");
?>
<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 3");
$query->execute();
$getuniontext = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 3");
$query->execute();
$getimage1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 4");
$query->execute();
$getimage2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 5");
$query->execute();
$getimage3 = $query->fetch();

?>
    <link rel="stylesheet" href="/view/frontend/css/threeInOne.style.css">

    <div id="info-section1">
        <div id="info-section1-content">
            <h2><?php echo $getuniontext['FieldName'] ?></h2>
            <div id="line"></div>
            <p id="info-text">
                <?php
                    echo $getuniontext['FieldContent']
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
                    <h4>OVERSKRIFT HER</h4>
                    <p>Tekst boks mangler</p>
                </div>
                <div id="info2">
                    <img src="<?php echo $getimage2['Image'] ?>" alt="">
                    <h4>OVERSKRIFT HER</h4>
                    <p>Tekst boks mangler</p>
                </div>
                <div id="info3">
                    <img src="<?php echo $getimage3['Image'] ?>" alt="">
                    <h4>OVERSKRIFT HER</h4>
                    <p>Tekst boks mangler</p>
                </div>
            </div>
        </div>
    </div>

    <div id="info-section3">
        <div id="info-section3-content">
            <h3>HVORDAN TILMELDER MAN SIG?</h3>
            <div id="line"></div>
            <p>Tekst boks mangler</p>
            <div id="step1-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">1</p></div></div>
                <p id="step-text">Tekst boks mangler</p>
            </div>
            <div id="step2-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">2</p></div></div>
                <p id="step-text">Tekst boks mangler</p>
            </div>
            <div id="step3-box">
                <div id="step-ring1"><div id="step-ring2"><p id="step-num">3</p></div></div>
                <p id="step-text">Tekst boks mangler</p>
            </div>
        </div>
    </div>


<?php
require_once("view/frontend/includes/footer.php");
?>
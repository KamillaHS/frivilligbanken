<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 12");
$query->execute();
$gethero= $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 6");
$query->execute();
$getabouttext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `employee`");
$query->execute();
$getemployees = $query->fetchAll();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 16");
$query->execute();
$getsocial1= $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 17");
$query->execute();
$getsocial2= $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 18");
$query->execute();
$getsocial3= $query->fetch();

?>
<link rel="stylesheet" href="/view/frontend/css/about.style.css">

<div id="about-section1" style="background-image: url('<?php echo $gethero['Image'] ?>')">
    <div id="about-section-overlay">

    </div>
</div>

<div id="about-section2">
    <div id="about-section2-content">
        <h2><?php echo $getabouttext1['FieldName'] ?></h2>
        <div id="line"></div>
        <div id="about-text">
            <p><?php echo $getabouttext1['FieldContent'] ?></p>
        </div>

        <div id="employee-section">
            <?php
            foreach ($getemployees as $employee) {
                ?>
                <div id="employee">
                    <div id="employee-image" style="background-image: url('<?php echo $employee['Picture'] ?>')"></div>
                    <p id="employee-name"><?php echo $employee['FullName'] ?></p>
                    <p id="employee-jobtitle"><?php echo $employee['JobTitle'] ?></p>
<!--                    <p id="employee-email">--><?php //echo $employee['Email'] ?><!--</p>-->
<!--                    <div id="employee-social">-->
<!--                        --><?php
//                        if(!empty($getsocial1['Image'])) {
//                            ?>
<!--                            <a href="--><?php //$employee['SocialLink1'] ?><!--"><img src="--><?php //echo $getsocial1['Image'] ?><!--" alt=""></a>-->
<!--                            --><?php
//                        }
//                        ?>
<!--                        --><?php
//                        if(!empty($getsocial2['Image'])) {
//                            ?>
<!--                            <a href="--><?php //$employee['SocialLink2'] ?><!--"><img src="--><?php //echo $getsocial2['Image'] ?><!--" alt=""></a>-->
<!--                            --><?php
//                        }
//                        ?>
<!--                        --><?php
//                        if(!empty($getsocial3['Image'] )) {
//                            ?>
<!--                            <a href="--><?php //$employee['SocialLink3'] ?><!--"><img src="--><?php //echo $getsocial3['Image'] ?><!--" alt=""></a>-->
<!--                            --><?php
//                        }
//                        ?>
<!--                    </div>-->
                </div>
                <?php
            }
            ?>
        </div>

<!--        <div id="employee-section">-->
<!--            <div id="employee">-->
<!--                <div id="employee-image" style="background: white"></div>-->
<!--                <p id="employee-name">Navn</p>-->
<!--                <p id="employee-jobtitle">Stilling</p>-->
<!--                <div id="employee-social">-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                </div>-->
<!--            </div>-->
<!--            <div id="employee">-->
<!--                <div id="employee-image" style="background: white"></div>-->
<!--                <p id="employee-name">Navn</p>-->
<!--                <p id="employee-jobtitle">Stilling</p>-->
<!--                <div id="employee-social">-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                </div>-->
<!--            </div>-->
<!--            <div id="employee">-->
<!--                <div id="employee-image" style="background: white"></div>-->
<!--                <p id="employee-name">Navn</p>-->
<!--                <p id="employee-jobtitle">Stilling</p>-->
<!--                <div id="employee-social">-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                    <a href=""><i class="material-icons">share</i></a>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
    </div>
</div>


<?php
require_once("view/frontend/includes/footer.php");
?>
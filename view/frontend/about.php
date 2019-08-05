<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 6");
$query->execute();
$getabouttext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `employee`");
$query->execute();
$getemployees = $query->fetchAll();


?>
<link rel="stylesheet" href="/view/frontend/css/about.style.css">

<div id="about-section1">
    <div id="about-section-overlay">

    </div>
</div>

<div id="about-section2">
    <div id="about-section2-content">
        <h2><?php echo $getabouttext1['FieldName'] ?></h2>
        <div id="line"></div>
        <div id="about-text">
            <?php echo $getabouttext1['FieldContent'] ?>
        </div>

        <div id="employee-section">
            <?php
            foreach ($getemployees as $employee) {
                ?>
                <div id="employee">
                    <div id="employee-image" style="background-image: url('<?php echo $employee['Picture'] ?>')"></div>
                    <p id="employee-name"><?php echo $employee['FullName'] ?></p>
                    <p id="employee-jobtitle"><?php echo $employee['JobTitle'] ?></p>
                    <p id="employee-email"><?php echo $employee['Email'] ?></p>
                    <div id="employee-social">
                        <a href=""><i class="material-icons">share</i></a>
                        <a href=""><i class="material-icons">share</i></a>
                    </div>
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
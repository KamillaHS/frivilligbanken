<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 5");
$query->execute();
$getvolunteertext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 22");
$query->execute();
$getvolunteertext2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 23");
$query->execute();
$getvolunteertext3 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 24");
$query->execute();
$getvolunteertext4 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 25");
$query->execute();
$getvolunteertext5 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 26");
$query->execute();
$getvolunteertext6 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 27");
$query->execute();
$getvolunteertext7 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 27");
$query->execute();
$getvolunteertext8 = $query->fetch();

if(isset($_POST['updateVolunteerText1'])) {
    $headline = $_POST['volunteer-headline1'];
    $content = $_POST['volunteer-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 5";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

if(isset($_POST['updateVolunteerText2'])) {
    $headline = $_POST['volunteer-headline2'];
    $content = $_POST['volunteer-text2'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 22";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

if(isset($_POST['updateVolunteerText3'])) {
    $headline = $_POST['volunteer-headline3'];
    $content = $_POST['volunteer-text3'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 23";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

if(isset($_POST['updateVolunteerText4'])) {
    $headline = $_POST['volunteer-headline4'];
    $content = $_POST['volunteer-text4'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 24";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

if(isset($_POST['updateVolunteerText5'])) {
    $headline = $_POST['volunteer-headline5'];
    $content = $_POST['volunteer-text5'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 25";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

if(isset($_POST['updateVolunteerText6'])) {
    $headline = $_POST['volunteer-headline6'];
    $content = $_POST['volunteer-text6'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 26";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

if(isset($_POST['updateVolunteerText7'])) {
    $headline = $_POST['volunteer-headline7'];
    $content = $_POST['volunteer-text7'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 27";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

if(isset($_POST['updateVolunteerText8'])) {
    $headline = $_POST['volunteer-headline8'];
    $content = $_POST['volunteer-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 28";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_frivillige'</script>";
}

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield` WHERE ImageID = 9");
$query->execute();
$getvolunteerimage1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield` WHERE ImageID = 10");
$query->execute();
$getvolunteerimage2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield` WHERE ImageID = 11");
$query->execute();
$getvolunteerimage3 = $query->fetch();

if(isset($_POST['uploadVolunteerPic1'])) {
    if(($_FILES['imgfile']['type']=="image/jpeg" ||
            $_FILES['imgfile']['type'] == "image/pjpeg" ||
            $_FILES['imgfile']['type'] == "image/png" ||
            $_FILES['imgfile']['type'] == "image/gif" ||
            $_FILES['imgfile']['type'] == "image/jpg" ) && (
            $_FILES['imgfile']['size'] < 50000000000 )) {
        if ($_FILES['imgfile']['error'] > 0 ){
            echo "Error: " . $_FILES['imgfile']['error'];
        }else{
            if (file_exists("images/imagefields/". preg_replace('/\s/',
                    '', $_FILES['imgfile']['name']))){
                echo '<script type="text/javascript">alert("Billedet eksisterer allerede i databasen");</script>';
            }else{
                move_uploaded_file($_FILES['imgfile']['tmp_name'],
                    "images/imagefields/".preg_replace('/\s/',
                        '',$_FILES['imgfile']['name']));

                $dbCon = dbCon($user, $pass);
                $filepath = "images/imagefields/";
                $sql = "UPDATE imagefield SET Image = '". $filepath . preg_replace('/\s/', '',
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 9";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&for_frivillige'</script>";
            }
        }
    } else {
        echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
    }
}

if(isset($_POST['uploadVolunteerPic2'])) {
    if(($_FILES['imgfile']['type']=="image/jpeg" ||
            $_FILES['imgfile']['type'] == "image/pjpeg" ||
            $_FILES['imgfile']['type'] == "image/png" ||
            $_FILES['imgfile']['type'] == "image/gif" ||
            $_FILES['imgfile']['type'] == "image/jpg" ) && (
            $_FILES['imgfile']['size'] < 50000000000 )) {
        if ($_FILES['imgfile']['error'] > 0 ){
            echo "Error: " . $_FILES['imgfile']['error'];
        }else{
            if (file_exists("images/imagefields/". preg_replace('/\s/',
                    '', $_FILES['imgfile']['name']))){
                echo '<script type="text/javascript">alert("Billedet eksisterer allerede i databasen");</script>';
            }else{
                move_uploaded_file($_FILES['imgfile']['tmp_name'],
                    "images/imagefields/".preg_replace('/\s/',
                        '',$_FILES['imgfile']['name']));

                $dbCon = dbCon($user, $pass);
                $filepath = "images/imagefields/";
                $sql = "UPDATE imagefield SET Image = '". $filepath . preg_replace('/\s/', '',
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 10";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&for_frivillige'</script>";
            }
        }
    } else {
        echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
    }
}

if(isset($_POST['uploadVolunteerPic3'])) {
    if(($_FILES['imgfile']['type']=="image/jpeg" ||
            $_FILES['imgfile']['type'] == "image/pjpeg" ||
            $_FILES['imgfile']['type'] == "image/png" ||
            $_FILES['imgfile']['type'] == "image/gif" ||
            $_FILES['imgfile']['type'] == "image/jpg" ) && (
            $_FILES['imgfile']['size'] < 50000000000 )) {
        if ($_FILES['imgfile']['error'] > 0 ){
            echo "Error: " . $_FILES['imgfile']['error'];
        }else{
            if (file_exists("images/imagefields/". preg_replace('/\s/',
                    '', $_FILES['imgfile']['name']))){
                echo '<script type="text/javascript">alert("Billedet eksisterer allerede i databasen");</script>';
            }else{
                move_uploaded_file($_FILES['imgfile']['tmp_name'],
                    "images/imagefields/".preg_replace('/\s/',
                        '',$_FILES['imgfile']['name']));

                $dbCon = dbCon($user, $pass);
                $filepath = "images/imagefields/";
                $sql = "UPDATE imagefield SET Image = '". $filepath . preg_replace('/\s/', '',
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 11";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&for_frivillige'</script>";
            }
        }
    } else {
        echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
    }
}

?>

    <div id="dashboard" class="edit-frontend">
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

            <h2>Billede: "<?php echo $getvolunteertext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                    Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getvolunteerimage1['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file1">
                        <div id="upload-file-name1"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadVolunteerPic1">
                </form>
                <div id="imgUpload" onclick="showImages1()">Vælg fra Uploads</div>
                <div id="folder-images1">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeVolunteerPic1&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getvolunteerimage1['Image']) {
                                            echo "checked='checked'";
                                        } else {
                                            echo "";
                                        }
                                        echo "'/>";
                                        ?>
                                        <span> </span>
                                    </label>
                                </div>
                            </form>
                        </div>
                        <?php

                    }
                    ?>
                </div>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline2" value="<?php echo $getvolunteertext2['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text2" id="" cols="30" rows="10"><?php echo $getvolunteertext2['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText2" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Billede: "<?php echo $getvolunteertext3['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                    Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getvolunteerimage2['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file2">
                        <div id="upload-file-name2"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadVolunteerPic2">
                </form>
                <div id="imgUpload" onclick="showImages2()">Vælg fra Uploads</div>
                <div id="folder-images2">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeVolunteerPic2&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getvolunteerimage2['Image']) {
                                            echo "checked='checked'";
                                        } else {
                                            echo "";
                                        }
                                        echo "'/>";
                                        ?>
                                        <span> </span>
                                    </label>
                                </div>
                            </form>
                        </div>
                        <?php

                    }
                    ?>
                </div>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext3['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline3" value="<?php echo $getvolunteertext3['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text3" id="" cols="30" rows="10"><?php echo $getvolunteertext3['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText3" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Billede: "<?php echo $getvolunteertext4['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                    Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getvolunteerimage3['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file3">
                        <div id="upload-file-name3"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadVolunteerPic3">
                </form>
                <div id="imgUpload" onclick="showImages3()">Vælg fra Uploads</div>
                <div id="folder-images3">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeVolunteerPic3&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getvolunteerimage3['Image']) {
                                            echo "checked='checked'";
                                        } else {
                                            echo "";
                                        }
                                        echo "'/>";
                                        ?>
                                        <span> </span>
                                    </label>
                                </div>
                            </form>
                        </div>
                        <?php

                    }
                    ?>
                </div>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext4['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline4" value="<?php echo $getvolunteertext4['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text4" id="" cols="30" rows="10"><?php echo $getvolunteertext4['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText4" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext5['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline5" value="<?php echo $getvolunteertext5['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text5" id="" cols="30" rows="10"><?php echo $getvolunteertext5['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText5" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext6['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline6" value="<?php echo $getvolunteertext6['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text6" id="" cols="30" rows="10"><?php echo $getvolunteertext6['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText6" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext7['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline7" value="<?php echo $getvolunteertext7['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text7" id="" cols="30" rows="10"><?php echo $getvolunteertext7['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText7" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getvolunteertext8['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="volunteer-headline8" value="<?php echo $getvolunteertext8['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="volunteer-text8" id="" cols="30" rows="10"><?php echo $getvolunteertext8['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateVolunteerText8" value="Gem ændringer">
                </form>
                </p>
            </div>

        </div>
    </div>

    <script>
        document.querySelector("#file1").onchange = function(){
            document.querySelector("#upload-file-name1").textContent = this.files[0].name;
        };

        function showImages1() {
            document.getElementById('folder-images1').style.display = "flex";
        }

        document.querySelector("#file2").onchange = function(){
            document.querySelector("#upload-file-name2").textContent = this.files[0].name;
        };

        function showImages2() {
            document.getElementById('folder-images2').style.display = "flex";
        }

        document.querySelector("#file3").onchange = function(){
            document.querySelector("#upload-file-name3").textContent = this.files[0].name;
        };

        function showImages3() {
            document.getElementById('folder-images3').style.display = "flex";
        }
    </script>


<?php require_once("view/backend/includes/footer.php"); ?>
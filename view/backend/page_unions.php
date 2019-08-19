<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 3");
$query->execute();
$getuniontext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 8");
$query->execute();
$getuniontext2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 9");
$query->execute();
$getuniontext3 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 10");
$query->execute();
$getuniontext4 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 11");
$query->execute();
$getuniontext5 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 12");
$query->execute();
$getuniontext6 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 13");
$query->execute();
$getuniontext7 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 14");
$query->execute();
$getuniontext8 = $query->fetch();


if(isset($_POST['updateUnionText1'])) {
    $headline = $_POST['union-headline1'];
    $content = $_POST['union-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 3";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText2'])) {
    $headline = $_POST['union-headline2'];
    $content = $_POST['union-text2'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 8";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText3'])) {
    $headline = $_POST['union-headline3'];
    $content = $_POST['union-text3'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 9";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText4'])) {
    $headline = $_POST['union-headline4'];
    $content = $_POST['union-text4'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 10";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText5'])) {
    $headline = $_POST['union-headline5'];
    $content = $_POST['union-text5'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 11";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText6'])) {
    $headline = $_POST['union-headline6'];
    $content = $_POST['union-text6'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 12";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText7'])) {
    $headline = $_POST['union-headline7'];
    $content = $_POST['union-text7'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 13";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

if(isset($_POST['updateUnionText8'])) {
    $headline = $_POST['union-headline8'];
    $content = $_POST['union-text8'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 14";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&for_foreninger'</script>";
}

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 3");
$query->execute();
$getunionimage1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 4");
$query->execute();
$getunionimage2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imageField` WHERE ImageID = 5");
$query->execute();
$getunionimage3 = $query->fetch();

if(isset($_POST['uploadUnionPic1'])) {
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
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 3";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&for_foreninger'</script>";
            }
        }
    } else {
        echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
    }
}

if(isset($_POST['uploadUnionPic2'])) {
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
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 4";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&for_foreninger'</script>";
            }
        }
    } else {
        echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
    }
}

if(isset($_POST['uploadUnionPic3'])) {
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
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 5";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&for_foreninger'</script>";
            }
        }
    } else {
        echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
    }
}

?>

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Side: Værd at vide - Foreninger</h1>
            <div id="dashboard-section1">
                <p>
                    Det bliver her muligt at ændre tekstfelt(r) på siden "Værd at vide - Foreninger".
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline1" value="<?php echo $getuniontext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text1" id="" cols="30" rows="10"><?php echo $getuniontext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText1" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Billede: "<?php echo $getuniontext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                    Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getunionimage1['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file1">
                        <div id="upload-file-name1"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadUnionPic1">
                </form>
                <div id="imgUpload" onclick="showImages1()">Vælg fra Uploads</div>
                <div id="folder-images1">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeUnionPic1&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getunionimage1['Image']) {
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

            <h2>Tekstfelt: "<?php echo $getuniontext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline2" value="<?php echo $getuniontext2['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text3" id="" cols="30" rows="10"><?php echo $getuniontext2['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText2" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Billede: "<?php echo $getuniontext3['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                    Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getunionimage2['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file2">
                        <div id="upload-file-name2"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadUnionPic2">
                </form>
                <div id="imgUpload" onclick="showImages2()">Vælg fra Uploads</div>
                <div id="folder-images2">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeUnionPic2&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getunionimage2['Image']) {
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

            <h2>Tekstfelt: "<?php echo $getuniontext3['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline3" value="<?php echo $getuniontext3['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text3" id="" cols="30" rows="10"><?php echo $getuniontext3['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText3" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Billede: "<?php echo $getuniontext4['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                    Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getunionimage3['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file3">
                        <div id="upload-file-name3"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadUnionPic3">
                </form>
                <div id="imgUpload" onclick="showImages3()">Vælg fra Uploads</div>
                <div id="folder-images3">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeUnionPic3&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getunionimage3['Image']) {
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

            <h2>Tekstfelt: "<?php echo $getuniontext4['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline4" value="<?php echo $getuniontext4['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text4" id="" cols="30" rows="10"><?php echo $getuniontext4['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText4" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext5['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline6" value="<?php echo $getuniontext5['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text6" id="" cols="30" rows="10"><?php echo $getuniontext5['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText6" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext7['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline7" value="<?php echo $getuniontext7['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text7" id="" cols="30" rows="10"><?php echo $getuniontext7['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText7" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getuniontext8['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="union-headline8" value="<?php echo $getuniontext8['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="union-text8" id="" cols="30" rows="10"><?php echo $getuniontext8['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateUnionText8" value="Gem ændringer">
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
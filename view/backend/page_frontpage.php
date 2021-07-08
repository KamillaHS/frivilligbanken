<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 1");
$query->execute();
$getfronttext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 2");
$query->execute();
$getfronttext2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield`");
$query->execute();
$getimages = $query->fetchAll();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield` WHERE ImageID = 1");
$query->execute();
$getfrontimage1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield` WHERE ImageID = 2");
$query->execute();
$getfrontimage2 = $query->fetch();


if(isset($_POST['updateFrontText1'])) {
    $headline = $_POST['front-headline1'];
    $content = $_POST['front-text1'];

    $sql = "UPDATE `textfield` SET `FieldName` = '$headline', `FieldContent` = '$content' WHERE TextFieldID = 1";
    $query = $dbCon->prepare($sql);
    $query->execute();

    echo "<script>location.href = '/side&forside'</script>";
}

if(isset($_POST['uploadHero'])) {
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
//                $sql = "UPDATE `imagefield` SET 'Image' = '". preg_replace('/\s/', '',
//                        $_FILES['imgfile']['name'])."' WHERE ImageID = 1";
                $filepath = "images/imagefields/";
                $sql = "UPDATE imagefield SET Image = '". $filepath . preg_replace('/\s/', '',
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 1";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&forside'</script>";
            }
        }
    } else {
        echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
    }
}

if(isset($_POST['uploadAppPic'])) {
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
                        $_FILES['imgfile']['name'])."' WHERE ImageID = 2";
                $query = $dbCon->prepare($sql);
                $query->execute();

                echo "<script>location.href = '/side&forside'</script>";
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
            <h1>Side: Forside</h1>
            <div id="dashboard-section1">
                <p>
                    Det er her muligt at ændre tekstfelt(r) på siden "Forside".
                </p>
            </div>

            <h2>Billede: Forside Hero</h2>
            <div id="dashboard-section1">
                <p>
                Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getfrontimage1['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file">
                        <div id="upload-file-name"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadHero">
                </form>
                <div id="imgUpload" onclick="showImages()">Vælg fra Uploads</div>
                <div id="folder-images">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeHero&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getfrontimage1['Image']) {
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

            <h2>Tekstfelt: "<?php echo $getfronttext1['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="front-headline1" value="<?php echo $getfronttext1['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="front-text1" id="" cols="30" rows="10"><?php echo $getfronttext1['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" name="updateFrontText1" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Tekstfelt: "<?php echo $getfronttext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                <form method="POST" action="">
                    <label>Overskrift</label>
                    <input type="text" name="front-headline2" placeholder="<?php echo $getfronttext2['FieldName'] ?>">
                    <br><br>
                    <label>Indhold</label>
                    <textarea name="front-text2" id="" cols="30" rows="10"><?php echo $getfronttext2['FieldContent'] ?></textarea>
                    <br><br>
                    <input type="submit" value="Gem ændringer">
                </form>
                </p>
            </div>

            <h2>Billede: "<?php echo $getfronttext2['FieldName'] ?>"</h2>
            <div id="dashboard-section1">
                <p>
                    Nuværende billede:
                <div id="current-image" style="background-image: url('<?php echo $getfrontimage2['Image'] ?>')"></div>
                </p>
                <form enctype="multipart/form-data" method="POST" action="">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file2">
                        <div id="upload-file-name2"></div>
                    </div>
                    <input id="upload" type="submit" Value="Godkend" name="uploadAppPic">
                </form>
                <div id="imgUpload" onclick="showImages2()">Vælg fra Uploads</div>
                <div id="folder-images2">
                    <?php
                    $dirname = "images/imagefields/";
                    $images = glob($dirname."*");

                    foreach($images as $image) {
                        ?>
                        <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                            <form method='POST' action='../../controller/ImageController.php?action=makeAppPic&image=<?php echo $image ?>'>
                                <div id='checkbox'>
                                    Vælg billede
                                    <label>
                                        <input name='checkbox' type='checkbox' onchange='this.form.submit()'"
                                        <?php
                                        if($image == $getfrontimage2['Image']) {
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
        </div>
    </div>

    <script>
        document.querySelector("#file").onchange = function(){
            document.querySelector("#upload-file-name").textContent = this.files[0].name;
        };

        function showImages() {
            document.getElementById('folder-images').style.display = "flex";
        }

        document.querySelector("#file2").onchange = function(){
            document.querySelector("#upload-file-name2").textContent = this.files[0].name;
        };

        function showImages2() {
            document.getElementById('folder-images2').style.display = "flex";
        }
    </script>




<?php require_once("view/backend/includes/footer.php"); ?>
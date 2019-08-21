<?php


class SponsorDAO
{
    function addSponsor() {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $name = $_POST['sponsorName'];
        $cvr = $_POST['sponsorCVR'];
        $email = $_POST['sponsorEmail'];
        $address = $_POST['address'];
        $city = $_POST['city'];
        $postalCode = $_POST['postalCode'];
        $phone = $_POST['phone'];
        $website = $_POST['website'];
        $area = $_POST['area'];

        if(($_FILES['imgfile']['type']=="image/jpeg" ||
                $_FILES['imgfile']['type'] == "image/pjpeg" ||
                $_FILES['imgfile']['type'] == "image/png" ||
                $_FILES['imgfile']['type'] == "image/gif" ||
                $_FILES['imgfile']['type'] == "image/jpg" ) && (
                $_FILES['imgfile']['size'] < 50000000000 )) {
            if ($_FILES['imgfile']['error'] > 0 ){
                echo "Error: " . $_FILES['imgfile']['error'];
            }else{
                if (file_exists("../images/sponsorPics/". preg_replace('/\s/',
                        '', $_FILES['imgfile']['name']))){
                    echo '<script type="text/javascript">alert("Billedet eksisterer allerede i databasen");</script>';
                }else{
                    move_uploaded_file($_FILES['imgfile']['tmp_name'],
                        "../images/sponsorPics/".preg_replace('/\s/',
                            '',$_FILES['imgfile']['name']));

                    $dbCon = dbCon($user, $pass);
                    $filepath = "../images/sponsorPics/";
//                    $sql = "INSERT INTO `sponsor` (`SponsorID`, `SponsorName`, `SponsorCVR`, `SponsorEmail`, `Address`, `City`, `PostalCode`, `Phone`, `Website`, `SponsorPic`, `AreaID`)
//                                            VALUES (NULL, '$name', '$cvr', '$email', '$address', '$city', '$postalCode', '$phone', '$website', '". $filepath . preg_replace('/\s/', '',
//                            $_FILES['imgfile']['name'])."', 'Bronze', '$area')";
                    $sql = "INSERT INTO `sponsor` (`SponsorID`, `SponsorName`, `SponsorCVR`, `SponsorEmail`, `Address`, `City`, `PostalCode`, `Phone`, `Website`, `SponsorPic`, `Status`, `AreaID`) 
                            VALUES (NULL, '$name', " . $cvr . ", '$email', '$address', '$city', '$postalCode', " . $phone . ", '$website', '". $filepath . preg_replace('/\s/', '',
                            $_FILES['imgfile']['name'])."', 'Bronze', ". $area .")";

                    $query = $dbCon->prepare($sql);
                    $query->execute();

                    echo "<script>location.href = '/sponsorere'</script>";
                }
            }
        } else {
            echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
        }
    }

    function editSponsorInfo($sponsorID) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $sponsorName = $_POST['name'];
        $sponsorCVR = $_POST ['cvr'];
        $email = $_POST['email'];
        $address = $_POST['address'];
        $city = $_POST['city'];
        $postalCode = $_POST['postalCode'];
        $phone = $_POST['phone'];
        $website = $_POST['webpage'];
        $status = $_POST['status'];

        $sql = "UPDATE sponsor SET SponsorName = '$sponsorName', SponsorCVR = '$sponsorCVR', SponsorEmail = '$email', Address = '$address', City = '$city', PostalCode = '$postalCode', Phone = '$phone', Website = '$website', Status = '$status' WHERE SponsorID = '$sponsorID'";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function editSponsorPic($sponsorID) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        if(($_FILES['imgfile']['type']=="image/jpeg" ||
                $_FILES['imgfile']['type'] == "image/pjpeg" ||
                $_FILES['imgfile']['type'] == "image/png" ||
                $_FILES['imgfile']['type'] == "image/gif" ||
                $_FILES['imgfile']['type'] == "image/jpg" ) && (
                $_FILES['imgfile']['size'] < 50000000000 )) {
            if ($_FILES['imgfile']['error'] > 0 ){
                echo "Error: " . $_FILES['imgfile']['error'];
            }else{
                if (file_exists("../images/sponsorPics/". preg_replace('/\s/',
                        '', $_FILES['imgfile']['name']))){
                    echo '<script type="text/javascript">alert("Billedet eksisterer allerede i databasen");</script>';
                }else{
                    move_uploaded_file($_FILES['imgfile']['tmp_name'],
                        "../images/sponsorPics/".preg_replace('/\s/',
                            '',$_FILES['imgfile']['name']));

                    $filepath = "../images/sponsorPics/";
                    $sql = "UPDATE sponsor SET SponsorPic = '". $filepath . preg_replace('/\s/', '',
                            $_FILES['imgfile']['name'])."' WHERE SponsorID = '$sponsorID'";
                    $query = $dbCon->prepare($sql);
                    $query->execute();

                    echo "<script>location.href = '/sponsorere'</script>";
                }
            }
        } else {
            echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
        }
    }

    function deleteSponsor($sponsorID) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $sql = "DELETE FROM sponsor WHERE SponsorID = '$sponsorID'";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }
}
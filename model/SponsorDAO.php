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
        $postalCode= $_POST['postalCode'];
//        $city = $_POST['city'];
//        $postalCode = $_POST['postalCode'];
        $phone = $_POST['phone'];
        $website = $_POST['website'];
//        $area = $_POST['area'];


        $query = $dbCon->prepare("SELECT * FROM denmarkcities WHERE `PostalCode` = '$postalCode'");
        $query->execute();
        $getinfo = $query->fetch();

        $city = $getinfo['CityName'];

        if(       $getinfo['Region'] == "Nordjylland") {
            /* Nordjylland */
            $area = 1;
        } elseif ($getinfo['Commune'] == "Herning Kommune" ||
                  $getinfo['Commune'] == "Holstebro Kommune" ||
                  $getinfo['Commune'] == "Ikast-Brande Kommune" ||
                  $getinfo['Commune'] == "Lemvig Kommune" ||
                  $getinfo['Commune'] == "Ringkøbing-Skjern Kommune" ||
                  $getinfo['Commune'] == "Skive Kommune" ||
                  $getinfo['Commune'] == "Struer Kommune" ||
                  $getinfo['Commune'] == "Viborg Kommune"
        ) {
            /* Midtjylland Vest */
            $area = 2;
        } elseif ($getinfo['Commune'] == "Favrskov Kommune" ||
                  $getinfo['Commune'] == "Hedensted Kommune" ||
                  $getinfo['Commune'] == "Horsens Kommune" ||
                  $getinfo['Commune'] == "Norddjurs Kommune" ||
                  $getinfo['Commune'] == "Odder Kommune" ||
                  $getinfo['Commune'] == "Randers Kommune" ||
                  $getinfo['Commune'] == "Samsø Kommune" ||
                  $getinfo['Commune'] == "Silkeborg Kommune" ||
                  $getinfo['Commune'] == "Skanderborg Kommune" ||
                  $getinfo['Commune'] == "Syddjurs Kommune" ||
                  $getinfo['Commune'] == "Aarhus Kommune"
        ) {
            /* Midtjylland Øst */
            $area = 3;
        } elseif ($getinfo['Commune'] == "Billund Kommune" ||
                  $getinfo['Commune'] == "Esbjerg Kommune" ||
                  $getinfo['Commune'] == "Fanø Kommune" ||
                  $getinfo['Commune'] == "Fredericia Kommune" ||
                  $getinfo['Commune'] == "Haderslev Kommune" ||
                  $getinfo['Commune'] == "Kolding Kommune" ||
                  $getinfo['Commune'] == "Sønderborg Kommune" ||
                  $getinfo['Commune'] == "Tønder Kommune" ||
                  $getinfo['Commune'] == "Varde Kommune" ||
                  $getinfo['Commune'] == "Vejen Kommune" ||
                  $getinfo['Commune'] == "Vejle Kommune" ||
                  $getinfo['Commune'] == "Aabenraa Kommune"
        ) {
            /* Sønderjylland */
            $area = 4;
        } elseif ($getinfo['Commune'] == "Assens Kommune" ||
                  $getinfo['Commune'] == "Faaborg-Midtfyn Kommune" ||
                  $getinfo['Commune'] == "Kerteminde Kommune" ||
                  $getinfo['Commune'] == "Langeland Kommune" ||
                  $getinfo['Commune'] == "Middelfart Kommune" ||
                  $getinfo['Commune'] == "Nordfyns Kommune" ||
                  $getinfo['Commune'] == "Nyborg Kommune" ||
                  $getinfo['Commune'] == "Odense Kommune" ||
                  $getinfo['Commune'] == "Svendborg Kommune" ||
                  $getinfo['Commune'] == "Ærø Kommune"
        ) {
            /* Østsjælland */
            $area = 9;
        } elseif ($getinfo['Commune'] == "Greve Kommune" ||
                  $getinfo['Commune'] == "Køge Kommune" ||
                  $getinfo['Commune'] == "Lejre Kommune" ||
                  $getinfo['Commune'] == "Roskilde Kommune" ||
                  $getinfo['Commune'] == "Solrød Kommune"
        ) {
             /* Fyn */
            $area = 5;
        } elseif ($getinfo['Commune'] == "Holbæk Kommune" ||
                  $getinfo['Commune'] == "Kalundborg Kommune" ||
                  $getinfo['Commune'] == "Odsherred Kommune" ||
                  $getinfo['Commune'] == "Ringsted Kommune" ||
                  $getinfo['Commune'] == "Slagelse Kommune" ||
                  $getinfo['Commune'] == "Sorø Kommune"
        ) {
            /* VestSjælland */
            $area = 6;
        } elseif ($getinfo['Commune'] == "Faxe Kommune" ||
                  $getinfo['Commune'] == "Guldborgsund Kommune" ||
                  $getinfo['Commune'] == "Lolland Kommune" ||
                  $getinfo['Commune'] == "Næstved Kommune" ||
                  $getinfo['Commune'] == "Stevns Kommune" ||
                  $getinfo['Commune'] == "Vordingborg Kommune"
        ) {
            /* Sydsjælland og Øerne */
            $area = 7;
        } elseif ($getinfo['Commune'] == "Allerød Kommune" ||
                  $getinfo['Commune'] == "Egedal Kommune" ||
                  $getinfo['Commune'] == "Fredensborg Kommune" ||
                  $getinfo['Commune'] == "Frederikssund Kommune" ||
                  $getinfo['Commune'] == "Furesø Kommune" ||
                  $getinfo['Commune'] == "Gribskov Kommune" ||
                  $getinfo['Commune'] == "Halsnæs Kommune" ||
                  $getinfo['Commune'] == "Helsingør Kommune" ||
                  $getinfo['Commune'] == "Hillerød Kommune" ||
                  $getinfo['Commune'] == "Hørsholm Kommune" ||
                  $getinfo['Commune'] == "Rudersdal Kommune"
        ) {
            /* Nordsjælland */
            $area = 10;
        } elseif ($getinfo['Commune'] == "Albertslund Kommune" ||
                  $getinfo['Commune'] == "Ballerup Kommune" ||
                  $getinfo['Commune'] == "Brøndby Kommune" ||
                  $getinfo['Commune'] == "Gentofte Kommune" ||
                  $getinfo['Commune'] == "Gladsaxe Kommune" ||
                  $getinfo['Commune'] == "Glostrup Kommune" ||
                  $getinfo['Commune'] == "Herlev Kommune" ||
                  $getinfo['Commune'] == "Hvidovre Kommune" ||
                  $getinfo['Commune'] == "Høje-Taastrup Kommune" ||
                  $getinfo['Commune'] == "Ishøj Kommune" ||
                  $getinfo['Commune'] == "Lyngby-Taarbæk Kommune" ||
                  $getinfo['Commune'] == "Rødovre Kommune" ||
                  $getinfo['Commune'] == "Vallensbæk Kommune"
        ) {
            /* Københavns Omegn */
            $area = 11;
        } elseif ($getinfo['Commune'] == "Københavns Kommune" ||
                  $getinfo['Commune'] == "Frederiksberg Kommune" ||
                  $getinfo['Commune'] == "Dragør Kommune" ||
                  $getinfo['Commune'] == "Tårnby Kommune"
        ) {
            /* Københavns By */
            $area = 12;
        } elseif ($getinfo['Commune'] == "Bornholm Kommune" ||
                  $getinfo['Commune'] == "Christiansø"
        ) {
            /* Bornholm */
            $area = 8;
        } else {
            $area = NULL;
        }


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
//        $city = $_POST['city'];
        $postalCode = $_POST['postalCode'];
        $phone = $_POST['phone'];
        $website = $_POST['webpage'];
        $status = $_POST['status'];

        $query = $dbCon->prepare("SELECT * FROM denmarkcities WHERE `PostalCode` = '$postalCode'");
        $query->execute();
        $getinfo = $query->fetch();

        $city = $getinfo['CityName'];

        if(       $getinfo['Region'] == "Nordjylland") {
            /* Nordjylland */
            $area = 1;
        } elseif ($getinfo['Commune'] == "Herning Kommune" ||
            $getinfo['Commune'] == "Holstebro Kommune" ||
            $getinfo['Commune'] == "Ikast-Brande Kommune" ||
            $getinfo['Commune'] == "Lemvig Kommune" ||
            $getinfo['Commune'] == "Ringkøbing-Skjern Kommune" ||
            $getinfo['Commune'] == "Skive Kommune" ||
            $getinfo['Commune'] == "Struer Kommune" ||
            $getinfo['Commune'] == "Viborg Kommune"
        ) {
            /* Midtjylland Vest */
            $area = 2;
        } elseif ($getinfo['Commune'] == "Favrskov Kommune" ||
            $getinfo['Commune'] == "Hedensted Kommune" ||
            $getinfo['Commune'] == "Horsens Kommune" ||
            $getinfo['Commune'] == "Norddjurs Kommune" ||
            $getinfo['Commune'] == "Odder Kommune" ||
            $getinfo['Commune'] == "Randers Kommune" ||
            $getinfo['Commune'] == "Samsø Kommune" ||
            $getinfo['Commune'] == "Silkeborg Kommune" ||
            $getinfo['Commune'] == "Skanderborg Kommune" ||
            $getinfo['Commune'] == "Syddjurs Kommune" ||
            $getinfo['Commune'] == "Aarhus Kommune"
        ) {
            /* Midtjylland Øst */
            $area = 3;
        } elseif ($getinfo['Commune'] == "Billund Kommune" ||
            $getinfo['Commune'] == "Esbjerg Kommune" ||
            $getinfo['Commune'] == "Fanø Kommune" ||
            $getinfo['Commune'] == "Fredericia Kommune" ||
            $getinfo['Commune'] == "Haderslev Kommune" ||
            $getinfo['Commune'] == "Kolding Kommune" ||
            $getinfo['Commune'] == "Sønderborg Kommune" ||
            $getinfo['Commune'] == "Tønder Kommune" ||
            $getinfo['Commune'] == "Varde Kommune" ||
            $getinfo['Commune'] == "Vejen Kommune" ||
            $getinfo['Commune'] == "Vejle Kommune" ||
            $getinfo['Commune'] == "Aabenraa Kommune"
        ) {
            /* Sønderjylland */
            $area = 4;
        } elseif ($getinfo['Commune'] == "Assens Kommune" ||
            $getinfo['Commune'] == "Faaborg-Midtfyn Kommune" ||
            $getinfo['Commune'] == "Kerteminde Kommune" ||
            $getinfo['Commune'] == "Langeland Kommune" ||
            $getinfo['Commune'] == "Middelfart Kommune" ||
            $getinfo['Commune'] == "Nordfyns Kommune" ||
            $getinfo['Commune'] == "Nyborg Kommune" ||
            $getinfo['Commune'] == "Odense Kommune" ||
            $getinfo['Commune'] == "Svendborg Kommune" ||
            $getinfo['Commune'] == "Ærø Kommune"
        ) {
            /* Østsjælland */
            $area = 9;
        } elseif ($getinfo['Commune'] == "Greve Kommune" ||
            $getinfo['Commune'] == "Køge Kommune" ||
            $getinfo['Commune'] == "Lejre Kommune" ||
            $getinfo['Commune'] == "Roskilde Kommune" ||
            $getinfo['Commune'] == "Solrød Kommune"
        ) {
            /* Fyn */
            $area = 5;
        } elseif ($getinfo['Commune'] == "Holbæk Kommune" ||
            $getinfo['Commune'] == "Kalundborg Kommune" ||
            $getinfo['Commune'] == "Odsherred Kommune" ||
            $getinfo['Commune'] == "Ringsted Kommune" ||
            $getinfo['Commune'] == "Slagelse Kommune" ||
            $getinfo['Commune'] == "Sorø Kommune"
        ) {
            /* VestSjælland */
            $area = 6;
        } elseif ($getinfo['Commune'] == "Faxe Kommune" ||
            $getinfo['Commune'] == "Guldborgsund Kommune" ||
            $getinfo['Commune'] == "Lolland Kommune" ||
            $getinfo['Commune'] == "Næstved Kommune" ||
            $getinfo['Commune'] == "Stevns Kommune" ||
            $getinfo['Commune'] == "Vordingborg Kommune"
        ) {
            /* Sydsjælland og Øerne */
            $area = 7;
        } elseif ($getinfo['Commune'] == "Allerød Kommune" ||
            $getinfo['Commune'] == "Egedal Kommune" ||
            $getinfo['Commune'] == "Fredensborg Kommune" ||
            $getinfo['Commune'] == "Frederikssund Kommune" ||
            $getinfo['Commune'] == "Furesø Kommune" ||
            $getinfo['Commune'] == "Gribskov Kommune" ||
            $getinfo['Commune'] == "Halsnæs Kommune" ||
            $getinfo['Commune'] == "Helsingør Kommune" ||
            $getinfo['Commune'] == "Hillerød Kommune" ||
            $getinfo['Commune'] == "Hørsholm Kommune" ||
            $getinfo['Commune'] == "Rudersdal Kommune"
        ) {
            /* Nordsjælland */
            $area = 10;
        } elseif ($getinfo['Commune'] == "Albertslund Kommune" ||
            $getinfo['Commune'] == "Ballerup Kommune" ||
            $getinfo['Commune'] == "Brøndby Kommune" ||
            $getinfo['Commune'] == "Gentofte Kommune" ||
            $getinfo['Commune'] == "Gladsaxe Kommune" ||
            $getinfo['Commune'] == "Glostrup Kommune" ||
            $getinfo['Commune'] == "Herlev Kommune" ||
            $getinfo['Commune'] == "Hvidovre Kommune" ||
            $getinfo['Commune'] == "Høje-Taastrup Kommune" ||
            $getinfo['Commune'] == "Ishøj Kommune" ||
            $getinfo['Commune'] == "Lyngby-Taarbæk Kommune" ||
            $getinfo['Commune'] == "Rødovre Kommune" ||
            $getinfo['Commune'] == "Vallensbæk Kommune"
        ) {
            /* Københavns Omegn */
            $area = 11;
        } elseif ($getinfo['Commune'] == "Københavns Kommune" ||
            $getinfo['Commune'] == "Frederiksberg Kommune" ||
            $getinfo['Commune'] == "Dragør Kommune" ||
            $getinfo['Commune'] == "Tårnby Kommune"
        ) {
            /* Københavns By */
            $area = 12;
        } elseif ($getinfo['Commune'] == "Bornholm Kommune" ||
            $getinfo['Commune'] == "Christiansø"
        ) {
            /* Bornholm */
            $area = 8;
        } else {
            $area = NULL;
        }

        $sql = "UPDATE sponsor SET SponsorName = '$sponsorName', SponsorCVR = '$sponsorCVR', SponsorEmail = '$email', Address = '$address', City = '$city', PostalCode = '$postalCode', Phone = '$phone', Website = '$website', AreaID = '$area', Status = '$status' WHERE SponsorID = '$sponsorID'";
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
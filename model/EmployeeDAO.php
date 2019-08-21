<?php


class EmployeeDAO
{
    function addEmployee() {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $fullName = $_POST['fullName'];
        $jobTitle = $_POST['jobTitle'];
        $email = $_POST['email'];

        if(($_FILES['imgfile']['type']=="image/jpeg" ||
                $_FILES['imgfile']['type'] == "image/pjpeg" ||
                $_FILES['imgfile']['type'] == "image/png" ||
                $_FILES['imgfile']['type'] == "image/gif" ||
                $_FILES['imgfile']['type'] == "image/jpg" ) && (
                $_FILES['imgfile']['size'] < 50000000000 )) {
            if ($_FILES['imgfile']['error'] > 0 ){
                echo "Error: " . $_FILES['imgfile']['error'];
            }else{
                if (file_exists("../images/employeePics/". preg_replace('/\s/',
                        '', $_FILES['imgfile']['name']))){
                    echo '<script type="text/javascript">alert("Billedet eksisterer allerede i databasen");</script>';
                }else{
                    move_uploaded_file($_FILES['imgfile']['tmp_name'],
                        "../images/employeePics/".preg_replace('/\s/',
                            '',$_FILES['imgfile']['name']));

                    $dbCon = dbCon($user, $pass);
                    $filepath = "../images/employeePics/";
                    $sql = "INSERT INTO `employee` (`EmployeeID`, `Picture`, `FullName`, `JobTitle`, `Email`, `SocialLink1`, `SocialLink2`, `SocialLink3`) 
                                VALUES (NULL, '". $filepath . preg_replace('/\s/', '',
                            $_FILES['imgfile']['name'])."', '$fullName', '$jobTitle', '$email', '', '', '')";
                    $query = $dbCon->prepare($sql);
                    $query->execute();

                    echo "<script>location.href = '/medarbejdere'</script>";
                }
            }
        } else {
            echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
        }
    }

    function editEmployeeInfo($employeeID) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $fullName = $_POST['fullName'];
        $jobTitle = $_POST ['jobTitle'];
        $email = $_POST['email'];

        $sql = "UPDATE employee SET FullName = '$fullName', JobTitle = '$jobTitle', Email = '$email' WHERE EmployeeID = '$employeeID'";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function editEmployeePic($employeeID) {
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
                if (file_exists("../images/employeePics/". preg_replace('/\s/',
                        '', $_FILES['imgfile']['name']))){
                    echo '<script type="text/javascript">alert("Billedet eksisterer allerede i databasen");</script>';
                }else{
                    move_uploaded_file($_FILES['imgfile']['tmp_name'],
                        "../images/employeePics/".preg_replace('/\s/',
                            '',$_FILES['imgfile']['name']));

                    $filepath = "../images/employeePics/";
                    $sql = "UPDATE employee SET Picture = '". $filepath . preg_replace('/\s/', '',
                            $_FILES['imgfile']['name'])."' WHERE EmployeeID = '$employeeID'";
                    $query = $dbCon->prepare($sql);
                    $query->execute();

                    echo "<script>location.href = '/medarbejdere'</script>";
                }
            }
        } else {
            echo '<script type="text/javascript">alert("Filtypen understøttes ikke, eller filen er for stor");</script>';
        }
    }

    function deleteEmployee($employeeID) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $sql = "DELETE FROM employee WHERE EmployeeID = '$employeeID'";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }
}
<?php


class AdminDAO
{
    function addAdmin() {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $username = $_POST['username'];
        $password = $_POST['password'];

        if(!empty($username) && !empty($password)) {
            $sql = "INSERT INTO webadmin (WebAdminID, Username, Password)
                    VALUES (NULL, '$username', '$password')";
            $query = $dbCon->prepare($sql);
            $query->execute();
        }
    }

    function editAdmin($adminID) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "UPDATE `webadmin` SET Username = '$username', Password = '$password' WHERE WebAdminID = '$adminID'";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function deleteAdmin($adminID) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);

        $sql = "DELETE FROM webadmin WHERE WebAdminID = '$adminID'";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

}
<?php
    require_once('../db/dbcon.php');

    try {
        $email = htmlspecialchars($_POST['email']);
        $password = $_POST['password'];

        $dbCon = dbCon($user, $pass);
        $query = $dbCon->prepare("SELECT * FROM `user` WHERE `Email` = ?");
        $query->bindParam(1, $email);
        $query->execute();
        $getUser = $query->fetch();

        if($password == $getUser['Password']){
            $userID = $getUser['UserID'];
            $query = $dbCon->prepare("SELECT `user`.`UserID`, `user`.`Email`, volunteer.FullName, volunteer.VolunteerID, 
                                            volunteer.DoB, volunteer.Address, volunteer.City, volunteer.PostalCode, volunteer.Phone, 
                                             volunteer.Description, volunteer.VolunteerPic, volunteer.Points, volunteer.CV, volunteer.AreaID
                                            FROM `user`, volunteer
                                            WHERE `user`.`VolunteerID` = volunteer.VolunteerID  && `user`.`UserID` = '$userID'");
            $query->execute();
            $getVolunteer = $query->fetch();
            error_log(print_r($getVolunteer, TRUE));
            echo json_encode(array('user' => $getUser));
        } else {
            echo json_encode(array('error' => 'Email eller Password er forkert'));
        }
    } catch (PDOException $e) {
        error_log(print_r($e->getMessage(), TRUE));
    }

?>
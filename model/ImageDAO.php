<?php


class ImageDAO
{
    function makeHero($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 1";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeAppPic($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 2";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeUnionPic1($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 3";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeUnionPic2($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 4";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeUnionPic3($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 5";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeSponsorPic1($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 6";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeSponsorPic2($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 7";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeSponsorPic3($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 8";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeVolunteerPic1($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 9";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeVolunteerPic2($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 10";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeVolunteerPic3($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 11";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function makeAboutHero($image) {
        require_once '../db/dbcon.php';
        $user = 'root';
        $pass = 'root';
        $dbCon = dbCon($user, $pass);
        $sql = "UPDATE imageField SET image = '$image' WHERE ImageID = 12";
        $query = $dbCon->prepare($sql);
        $query->execute();
    }

    function deleteImage($image) {
        unlink($image);
    }
}
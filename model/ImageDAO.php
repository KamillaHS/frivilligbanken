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

    function deleteImage($image) {
        unlink($image);
    }
}
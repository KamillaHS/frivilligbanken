<?php
$user = 'root';
$pass = 'root';
$cxn = dbCon($user, $pass);

function dbCon($user, $pass){
    try {
        $dbCon = new PDO('mysql:host=localhost;dbname=frivilligbankendb;charset=utf8', $user, $pass);
        // $dbCon = new PDO('mysql:host=mysql56.unoeuro.com;dbname=surcrit_dk_db_pyrosharedb;charset=utf8', $user, $pass);
        return $dbCon;
    } catch (PDOException $err) {
        echo "Error!: " . $err->getMessage() . "<br/>";
        die();
    }}
?>
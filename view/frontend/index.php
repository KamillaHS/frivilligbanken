<?php include_once("db/dbcon.php") ?>

<?php
$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `employee`");
$query->execute();
$getemployees = $query->fetchAll();

echo "Frivilligbankens side";

echo "<br><br>";

foreach ($getemployees as $employee) {
    echo $employee['FullName'] . "<br>";
}
?>
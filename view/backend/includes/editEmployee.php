<?php
require_once("view/backend/includes/header.php");

$employeeID = $_GET['EmployeeID'];

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `employee` WHERE EmployeeID = '$employeeID'");
$query->execute();
$getemployee = $query->fetch();

?>

<div id="dashboard">
    <?php require_once ("view/backend/includes/sidenav.php")?>
    <div id="dashboard-content">
        <h1>Medarbejdere</h1>
        <div id="dashboard-section1">
            <p>
                Medarbejder nummer: <?php $getemployee['EmployeeID'] ?>
            </p>
        </div>




    </div>
</div>

<?php require_once("view/backend/includes/footer.php"); ?>

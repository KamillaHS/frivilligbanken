<?php
require_once("view/backend/includes/header.php");

//$employeeID = $_GET['id'];
$adminID = $args[0];

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `webadmin` WHERE WebAdminID = '$adminID'");
$query->execute();
$getadmin = $query->fetch();



?>
<link rel="stylesheet" href="view/backend/css/employees.style.css">
<link rel="stylesheet" href="../../../view/backend/css/employees.style.css">

<div id="dashboard">
    <?php require_once ("view/backend/includes/sidenav.php")?>
    <div id="dashboard-content">
        <h1>Rediger admin <?php echo $getadmin['WebAdminID'] ?>'s information</h1>
        <div id="dashboard-section1">
            <form id="edit-employee" method="POST" action="../../../controller/AdminController.php?action=EditAdmin&adminID=<?php echo $getadmin['WebAdminID'] ?>">
                <input type="text" name="username" value="<?php echo $getadmin['Username'] ?>">
                <input type="password" name="password" value="<?php echo $getadmin['Password'] ?>">
                <br><br>
                <input type="submit" value="Gem ændringer" name="editEmployee">
            </form>

        </div>




    </div>
</div>

<script>
    document.querySelector("#file").onchange = function(){
        document.querySelector("#upload-file-name").textContent = this.files[0].name;
    };
</script>

<?php require_once("view/backend/includes/footer.php"); ?>

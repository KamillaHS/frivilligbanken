<?php
require_once("view/backend/includes/header.php");

//$employeeID = $_GET['id'];
$employeeID = $args[0];

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `employee` WHERE EmployeeID = '$employeeID'");
$query->execute();
$getemployee = $query->fetch();



?>
<link rel="stylesheet" href="view/backend/css/employees.style.css">
<link rel="stylesheet" href="../../../view/backend/css/employees.style.css">

<div id="dashboard">
    <?php require_once ("view/backend/includes/sidenav.php")?>
    <div id="dashboard-content">
        <h1>Rediger medarbejder <?php echo $getemployee['EmployeeID'] ?>'s billede</h1>
        <div id="dashboard-section1">
            Medarbejder nummer: <?php echo $getemployee['EmployeeID'] ?>

            <div id="employee-pic" style="background-image: url('<?php echo $getemployee['Picture'] ?>')"></div>
            <form method="POST" enctype="multipart/form-data" action="../../../controller/EmployeeController.php?action=EditEmployeePic&employeeID=<?php echo $getemployee['EmployeeID'] ?>">
                <div class="upload-btn-wrapper">
                    <div id="imgUpload">Upload billede</div>
                    <input name="imgfile" type="file" id="file" value="<?php echo $getemployee['Picture'] ?>">
                    <div id="upload-file-name"><?php echo $getemployee['Picture'] ?></div>
                </div>
                <input type="submit" value="Opdater Billede">
            </form>
        </div>

        <h1>Rediger medarbejder <?php echo $getemployee['EmployeeID'] ?>'s information</h1>
        <div id="dashboard-section1">
            <form id="edit-employee" method="POST" action="../../../controller/EmployeeController.php?action=EditEmployeeInfo&employeeID=<?php echo $getemployee['EmployeeID'] ?>">
                <input type="text" name="fullName" value="<?php echo $getemployee['FullName'] ?>">
                <input type="text" name="jobTitle" value="<?php echo $getemployee['JobTitle'] ?>">
                <input type="email" name="email" value="<?php echo $getemployee['Email'] ?>">
                <label>Email vises ikke på hjemmesiden. Det er udelukkende til brug for email omdirigering til kontaktformular.</label>

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

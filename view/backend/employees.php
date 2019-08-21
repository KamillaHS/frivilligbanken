<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `employee`");
$query->execute();
$getemployees = $query->fetchAll();

?>
    <link rel="stylesheet" href="view/backend/css/employees.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Medarbejdere</h1>
            <div id="dashboard-section1">
                <p>
                    Her kommer til at være en liste over medarbejdere og funktioner der gør det muligt at tilføje, slette eller ændre medarbejdere.
                </p>
            </div>

            <div id="dashboard-section1">
                <a id="add" class="waves-effect waves-light btn" onclick="showForm()"><i class="material-icons left">person_add</i>Tilføj Medarbejder</a>
                <form id="add-employee" method="POST" enctype="multipart/form-data" action="../../controller/EmployeeController.php?action=AddEmployee">
                    <div class="upload-btn-wrapper">
                        <div id="imgUpload">Upload billede</div>
                        <input name="imgfile" type="file" id="file">
                        <div id="upload-file-name"></div>
                    </div>

                    <input type="text" name="fullName" placeholder="Fulde Navn" required>
                    <input type="text" name="jobTitle" placeholder="Job Titel" required>
                    <input type="email" name="email" placeholder="Email" required>
                    <label>Email vises ikke på hjemmesiden. Det er udelukkende til brug for email omdirigering til kontaktformular.</label>

                    <br><br>

                    <input type="submit" name="addEmployee">
                </form>
            </div>

            <div id="dashboard-section1" class="flex-box">
               <?php
               foreach($getemployees as $employee) {
                   ?>

                   <div id="employee-box">
                       <div id="employee-pic" style="background-image: url('<?php echo $employee['Picture'] ?>')"></div>
                       <div id="employee-info">
                           <p><b>ID:</b> <?php echo $employee['EmployeeID'] ?></p>
                           <p><b>Fulde Navn:</b> <?php echo $employee['FullName'] ?></p>
                           <p><b>Job Titel:</b> <?php echo $employee['JobTitle'] ?></p>
                           <p><b>Email:</b> <?php echo $employee['Email'] ?></p>
                       </div>
                       <div id="buttons">

                           <a href="rediger_medarbejder/<?php echo $employee['EmployeeID'] ?>" id="edit"><i class="material-icons">settings</i></a>

                           <form method="POST" action="../../controller/EmployeeController.php?action=DeleteEmployee&employeeID=<?php echo $employee['EmployeeID'] ?>">
                               <button id="delete" onclick="return confirm('Er du sikker på at du vil slette medarbejderen med ID <?php echo $employee['EmployeeID'] ?>')"><i class="material-icons">delete</i></button>
                           </form>
                       </div>
                   </div>

                   <?php
               }
               ?>
            </div>
        </div>
    </div>

    <script>
        document.querySelector("#file").onchange = function(){
            document.querySelector("#upload-file-name").textContent = this.files[0].name;
        };

        function showForm() {
            document.getElementById('add-employee').style.display = "block";
        }
    </script>


<?php require_once("view/backend/includes/footer.php"); ?>
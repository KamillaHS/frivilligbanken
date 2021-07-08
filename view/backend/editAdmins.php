<?php
require_once("view/backend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM webadmin");
$query->execute();
$getadmins = $query->fetchAll();

?>

    <link rel="stylesheet" href="view/backend/css/employees.style.css">
    <link rel="stylesheet" href="view/backend/css/editAdmins.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Admins</h1>
            <div id="dashboard-section1">
                <p>
                    Her kommer til at være en liste over admins, en funktion så man kan tilføje admins, ændre admins og slette admins.
                    Denne fane vil kun være tilgængelig for den, der har adgang til admin med ID = 1.
                </p>
            </div>

            <h2>Tilføj Admin</h2>
            <div id="dashboard-section1">
                <a id="add" class="waves-effect waves-light btn" onclick="showForm()"><i class="material-icons left">person_add</i>Tilføj Admin</a>
                <form id="add-employee" method="POST" action="../../controller/AdminController.php?action=AddAdmin">
                    <input type="text" name="username" placeholder="Brugernavn" required>
                    <input type="password" name="password" placeholder="Password" required>

                    <input type="submit" name="addAdmin">
                </form>
            </div>

            <h2>Rediger / Slet Admins</h2>
            <div id="dashboard-section1">
                <div id="showAdmins">
                    <?php
                    foreach ($getadmins as $admin) {
                        ?>
                        <div id="admin-box">
                            <div id="admin-info">
                                <p><b>ID:</b> <?php echo $admin['WebAdminID'] ?></p>
                                <p><b>Brugernavn:</b> <?php echo $admin['Username'] ?></p>
                                <p><b>Password:</b> <?php echo $admin['Password'] ?></p>
                                <form method="POST" action="">
                                    <button class="waves-effect waves-light btn" id="passwordReset">Send email til reset af password</button>
                                </form>
                            </div>
                            <div id="buttons">
                                <a href="rediger_admin/<?php echo $admin['WebAdminID'] ?>" id="edit"><i class="material-icons">settings</i></a>
                                <?php
                                if($admin['WebAdminID'] != 1) {
                                    ?>
                                    <form method="POST" action="../../controller/AdminController.php?action=DeleteAdmin&adminID=<?php echo $admin['WebAdminID'] ?>">
                                        <button id="delete" onclick="return confirm('Er du sikker på at du vil slette admin <?php echo $admin['Username'] ?> med ID <?php echo $admin['WebAdminID'] ?>')"><i class="material-icons">delete</i></button>
                                    </form>
                                    <?php
                                } else {
                                    echo "";
                                }
                                ?>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>

    <script>
        function showForm() {
            document.getElementById('add-employee').style.display = "block";
        }
    </script>


<?php require_once("view/backend/includes/footer.php"); ?>
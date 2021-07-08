<?php
require_once("/includes/header.php");
require_once("/includes/session.php");
$admin_id = $_SESSION['admin_id'];
$admin_username = $_SESSION['username'];

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM webadmin WHERE WebAdminID = '$admin_id'");
$query->execute();
$getadmin = $query->fetch();

?>

    <link rel="stylesheet" href="view/backend/css/employees.style.css">
    <link rel="stylesheet" href="view/backend/css/editAdmins.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Admin: <?php echo $admin_username ?></h1>

            <div id="dashboard-section1">
                <div id="admin-box" style="width: 100%;">
                    <div id="admin_image">'
                        <img style="height: 150px; border-radius: 10px; padding-right: 20px; margin: 10px;" src="https://secureimages.allrecipes.com/userphotos/250x250/8531051.jpg" />
                    </div>
                    <div id="admin-info" style="padding-top: 25px; margin-left: 10px; line-height: 200%;"> 
                        <p><b>ID:</b> <?php echo $getadmin['WebAdminID'] ?></p>
                        <p><b>Brugernavn:</b> <?php echo $getadmin['Username'] ?></p>
                        <p><b>Password:</b> <?php echo $getadmin['Password'] ?></p>
                        <form method="POST" action="">
                            <button class="waves-effect waves-light btn" id="passwordReset" style="margin-top: 25px;">Send email til reset af password</button>
                        </form>
                    </div>
                    <div id="buttons">
                        <a href="rediger_admin/<?php echo $getadmin['WebAdminID'] ?>" id="edit"><i class="material-icons">settings</i></a>
                                
                    </div>
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
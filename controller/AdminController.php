<?php
require_once(__DIR__ . '/../model/AdminDAO.php');

if(isset($_POST['addAdmin'])) {
    $action = $_GET['action'];

    if($action == 'AddAdmin') {
        $addAdmin = new AdminDAO();
        $addAdmin->addAdmin();
        echo "<script>location.href = '/rediger_admins'</script>";
    }
}

if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET['action'];

    if($action == 'DeleteAdmin') {
        $adminID = $_GET['adminID'];

        $addAdmin = new AdminDAO();
        $addAdmin->deleteAdmin($adminID);
        echo "<script>location.href = '/rediger_admins'</script>";
    }
}
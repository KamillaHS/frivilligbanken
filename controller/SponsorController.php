<?php
require_once(__DIR__ . '/../model/SponsorDAO.php');

if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
//    if ($action == "EditEmployee")
//    {
//        $employeeID = $_GET["EmployeeID"];
//        echo "Hello";
//        echo "<script>location.href = 'rediger_medarbejder?EmployeeID=" . $employeeID . "'</script>";
//    }

    if ($action == "AddSponsor") {
        $addSponsor = new SponsorDAO();
        $addSponsor->addSponsor();
        echo "<script>location.href = '/sponsorere'</script>";
    }

    if ($action == "DeleteSponsor") {
        $sponsorID = $_GET['sponsorID'];
        $deleteSponsor = new SponsorDAO();
        $deleteSponsor->deleteSponsor($sponsorID);
        echo "<script>location.href = '/sponsorere'</script>";
    }
}
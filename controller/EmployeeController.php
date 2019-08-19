<?php
require_once(__DIR__ . '/../model/EmployeeDAO.php');

if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
//    if ($action == "EditEmployee")
//    {
//        $employeeID = $_GET["EmployeeID"];
//        echo "Hello";
//        echo "<script>location.href = 'rediger_medarbejder?EmployeeID=" . $employeeID . "'</script>";
//    }

    if ($action == "AddEmployee") {
        $addEmployee = new EmployeeDAO();
        $addEmployee->addEmployee();
        echo "<script>location.href = '/medarbejdere'</script>";
    }

    if ($action == "DeleteEmployee") {
        $employeeID = $_GET['employeeID'];
        $deleteEmployee = new EmployeeDAO();
        $deleteEmployee->deleteEmployee($employeeID);
        echo "<script>location.href = '/medarbejdere'</script>";
    }
}
<?php
require_once("db/dbcon.php");
require_once("view/backend/includes/session.php");
if (!logged_in()) {
    // header("Location: index.php");
    echo "<script>location.href = '/adminLogin'</script>";
}
?>


<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="utf-8">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/view/backend/css/header.style.css">
    <link rel="stylesheet" href="/view/backend/css/index.style.css">
    <link rel="stylesheet" href="/view/backend/css/footer.style.css">

    <!-- Font links -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,700&display=swap" rel="stylesheet">

    <title>Frivilligbanken: Admin</title>
</head>
<body>

<header>
    <?php require_once("view/backend/includes/nav.php"); ?>
</header>

<div id="body-content">
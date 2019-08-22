<?php
require_once(__DIR__ . '/../model/SponsorDAO.php');

if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];

    if ($action == "AddSponsor") {
        $addSponsor = new SponsorDAO();
        $addSponsor->addSponsor();
        echo "<script>location.href = '/sponsorere'</script>";
    }

    if ($action == "EditSponsorInfo") {
        $sponsorID = $_GET['sponsorID'];
        $editSponsorInfo = new SponsorDAO();
        $editSponsorInfo->editSponsorInfo($sponsorID);
        echo "<script>location.href = '/sponsorere'</script>";
    }

    if ($action == "EditSponsorPic") {
        $sponsorID = $_GET['sponsorID'];
        $editSponsorPic = new SponsorDAO();
        $editSponsorPic->editSponsorPic($sponsorID);
        echo "<script>location.href = '/sponsorere'</script>";
    }

    if ($action == "DeleteSponsor") {
        $sponsorID = $_GET['sponsorID'];
        $deleteSponsor = new SponsorDAO();
        $deleteSponsor->deleteSponsor($sponsorID);
        echo "<script>location.href = '/sponsorere'</script>";
    }
}
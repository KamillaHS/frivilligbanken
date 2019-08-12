<?php
require_once(__DIR__ . '/../model/ImageDAO.php');

// Add new picture and make hero
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeHero")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectHero = new ImageDAO();
            $selectHero->makeHero($image);
            echo "<script>location.href = '/side&forside'</script>";
        }
    }
}

// Add new picture and make App Picture
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeAppPic")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeAppPic($image);
            echo "<script>location.href = '/side&forside'</script>";
        }
    }
}


if(isset($_POST['delete'])) {
    $action = $_GET["action"];
    if ($action == "deleteImage")
    {
        $image = $_GET["image"];
        $deleteImage = new ImageDAO();
        $deleteImage->deleteImage($image);
        echo "<script>location.href = '/uploads'</script>";
    }
}

<?php
require_once(__DIR__ . '/../model/ImageDAO.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeHero")
    {
        if(isset($_POST['isHot'])) {
//            $imageID = $_GET['imageID'];
            $image = $_GET['image'];
            $selectHot = new ImageDAO();
            $selectHot->makeHero($image);
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

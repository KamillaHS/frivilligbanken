<?php
require_once(__DIR__ . '/../model/ImageDAO.php');

// Add new picture and make hero on Front Page
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

// Add new picture to Advantage 1 under Unions
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeUnionPic1")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeUnionPic1($image);
            echo "<script>location.href = '/side&for_foreninger'</script>";
        }
    }
}

// Add new picture to Advantage 2 under Unions
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeUnionPic2")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeUnionPic2($image);
            echo "<script>location.href = '/side&for_foreninger'</script>";
        }
    }
}

// Add new picture to Advantage 3 under Unions
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeUnionPic3")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeUnionPic3($image);
            echo "<script>location.href = '/side&for_foreninger'</script>";
        }
    }
}

// Add new picture to Advantage 1 under Sponsors
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeSponsorPic1")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeSponsorPic1($image);
            echo "<script>location.href = '/side&for_sponsorere'</script>";
        }
    }
}

// Add new picture to Advantage 2 under Sponsors
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeSponsorPic2")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeSponsorPic2($image);
            echo "<script>location.href = '/side&for_sponsorere'</script>";
        }
    }
}

// Add new picture to Advantage 3 under Sponsors
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeSponsorPic3")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeSponsorPic3($image);
            echo "<script>location.href = '/side&for_sponsorere'</script>";
        }
    }
}

// Add new picture to Advantage 1 under Volunteers
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeVolunteerPic1")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeVolunteerPic1($image);
            echo "<script>location.href = '/side&for_frivillige'</script>";
        }
    }
}

// Add new picture to Advantage 2 under Volunteers
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makVolunteerPic2")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeVolunteerPic2($image);
            echo "<script>location.href = '/side&for_frivillige'</script>";
        }
    }
}

// Add new picture to Advantage 3 under Volunteers
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeVolunteerPic3")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectPic = new ImageDAO();
            $selectPic->makeVolunteerPic3($image);
            echo "<script>location.href = '/side&for_frivillige'</script>";
        }
    }
}

// Add new picture and make hero on About Page
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_GET["action"];
    if ($action == "makeAboutHero")
    {
        if(isset($_POST['checkbox'])) {
            $image = $_GET['image'];
            $selectHero = new ImageDAO();
            $selectHero->makeAboutHero($image);
            echo "<script>location.href = '/side&om'</script>";
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

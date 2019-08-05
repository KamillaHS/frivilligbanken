<?php

//echo $_SERVER['REQUEST_URI'];

$request = $_SERVER['REQUEST_URI'];

switch ($request) {
    case '/' :
        require __DIR__ . '/view/frontend/index.php';
        break;
    case '' :
        require __DIR__ . '/view/frontend/index.php';
        break;
    case '/om' :
        require __DIR__ . '/view/frontend/about.php';
        break;
    case '/for_foreninger' :
        require __DIR__ . '/view/frontend/forUnions.php';
        break;
    case '/for_sponsorer' :
        require __DIR__ . '/view/frontend/forSponsors.php';
        break;
    case '/for_frivillige' :
        require __DIR__ . '/view/frontend/forVolunteers.php';
        break;
    case '/sponsorer' :
        require __DIR__ . '/view/frontend/sponsors.php';
        break;
    case '/kontakt' :
        require __DIR__ . '/view/frontend/contact.php';
        break;
    case '/login&opret' :
        require __DIR__ . '/view/frontend/comingSoon.php';
        break;

    case '/admin' :
        require __DIR__ . '/view/backend/index.php';
        break;
    case '/dashboard' :
        require __DIR__ . '/view/backend/index.php';
        break;
    case '/side&forside' :
        require __DIR__ . '/view/backend/page_frontpage.php';
        break;
    case '/side&for_sponsorere' :
        require __DIR__ . '/view/backend/page_sponsors.php';
        break;
    case '/side&for_foreninger' :
        require __DIR__ . '/view/backend/page_unions.php';
        break;
    case '/side&for_frivillige' :
        require __DIR__ . '/view/backend/page_volunteers.php';
        break;
    case '/side&om' :
        require __DIR__ . '/view/backend/page_about.php';
        break;
    case '/side&sponsorere' :
        require __DIR__ . '/view/backend/page_sponsorList.php';
        break;
    case '/side&kontakt' :
        require __DIR__ . '/view/backend/page_contact.php';
        break;
    case '/sponsorere' :
        require __DIR__ . '/view/backend/sponsors.php';
        break;
    case '/medarbejdere' :
        require __DIR__ . '/view/backend/employees.php';
        break;
    case '/rediger_admins' :
        require __DIR__ . '/view/backend/editAdmins.php';
        break;



    default:
        require __DIR__ . '/view/frontend/index.php';
        break;
}

//if (isset($_GET['page'])){
//    $page = $_GET['page'];
//}else{
//    $page = "index";}
//switch($page) {
//    default:
//        include('view/frontend/index.php');
//        break;
//    case "about":
//        include('view/frontend/about.php');
//        break;
//}
//
//?>
<!---->
<!--<a href="index.php?page=index">Home<a/>-->
<!---->
<!--<a href="index.php?page=contact">About<a/>-->

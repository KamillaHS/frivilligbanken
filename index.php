<?php

//echo $_SERVER['REQUEST_URI'];

$request = $_SERVER['REQUEST_URI'];

class Router{
    private $request;
    public function __construct($request){
        $this->request = $request;
    }
    public function get($route, $file){
        $uri = trim( $this->request, "/" );
        $uri = explode("/", $uri);
        if($uri[0] == trim($route, "/")){
            array_shift($uri);
            $args = $uri;

            // Require $file string and add .php extension
            require $file . '.php';
        }
    }
}

// Instantiate Router and parse URI to router
$router = new Router($request);

// Routes
$router->get('/', 'view/frontend/index');
$router->get('', 'view/frontend/index');

$router->get('om', 'view/frontend/about');
$router->get('for_foreninger', 'view/frontend/forUnions');
$router->get('for_sponsorer', 'view/frontend/forSponsors');
$router->get('for_frivillige', 'view/frontend/forVolunteers');
$router->get('sponsorer', 'view/frontend/sponsors');
$router->get('kontakt', 'view/frontend/contact');
$router->get('login&opret', 'view/frontend/comingSoon');

$router->get('adminLogin', 'view/backend/login');
$router->get('adminLogOut', 'view/backend/includes/logout');
$router->get('admin', 'view/backend/index');
$router->get('dashboard', 'view/backend/index');
$router->get('side&forside', 'view/backend/page_frontpage');
$router->get('side&for_sponsorere', 'view/backend/page_sponsors');
$router->get('side&for_foreninger', 'view/backend/page_unions');
$router->get('side&for_frivillige', 'view/backend/page_volunteers');
$router->get('side&om', 'view/backend/page_about');
$router->get('side&sponsorere', 'view/backend/page_sponsorList');
$router->get('side&kontakt', 'view/backend/page_contact');
$router->get('medarbejdere', 'view/backend/employees');
$router->get('sponsorere', 'view/backend/sponsors');
$router->get('uploads', 'view/backend/uploads');
$router->get('rediger_admins', 'view/backend/editAdmins');
$router->get('rediger_medarbejder', 'view/backend/includes/editEmployee');



//switch ($request) {
//    case '/' :
//        require __DIR__ . '/view/frontend/index.php';
//        break;
//    case '' :
//        require __DIR__ . '/view/frontend/index.php';
//        break;
//    case '/om' :
//        require __DIR__ . '/view/frontend/about.php';
//        break;
//    case '/for_foreninger' :
//        require __DIR__ . '/view/frontend/forUnions.php';
//        break;
//    case '/for_sponsorer' :
//        require __DIR__ . '/view/frontend/forSponsors.php';
//        break;
//    case '/for_frivillige' :
//        require __DIR__ . '/view/frontend/forVolunteers.php';
//        break;
//    case '/sponsorer' :
//        require __DIR__ . '/view/frontend/sponsors.php';
//        break;
//    case '/kontakt' :
//        require __DIR__ . '/view/frontend/contact.php';
//        break;
//    case '/login&opret' :
//        require __DIR__ . '/view/frontend/comingSoon.php';
//        break;
//
//    case '/adminLogin' :
//        require __DIR__ . '/view/backend/login.php';
//        break;
//    case '/adminLogOut' :
//        require __DIR__ . '/view/backend/includes/logout.php';
//        break;
//    case '/admin' :
//        require __DIR__ . '/view/backend/index.php';
//        break;
//    case '/dashboard' :
//        require __DIR__ . '/view/backend/index.php';
//        break;
//    case '/side&forside' :
//        require __DIR__ . '/view/backend/page_frontpage.php';
//        break;
//    case '/side&for_sponsorere' :
//        require __DIR__ . '/view/backend/page_sponsors.php';
//        break;
//    case '/side&for_foreninger' :
//        require __DIR__ . '/view/backend/page_unions.php';
//        break;
//    case '/side&for_frivillige' :
//        require __DIR__ . '/view/backend/page_volunteers.php';
//        break;
//    case '/side&om' :
//        require __DIR__ . '/view/backend/page_about.php';
//        break;
//    case '/side&sponsorere' :
//        require __DIR__ . '/view/backend/page_sponsorList.php';
//        break;
//    case '/side&kontakt' :
//        require __DIR__ . '/view/backend/page_contact.php';
//        break;
//    case '/medarbejdere' :
//        require __DIR__ . '/view/backend/employees.php';
//        break;
//    case '/sponsorere' :
//        require __DIR__ . '/view/backend/sponsors.php';
//        break;
//    case '/uploads' :
//        require __DIR__ . '/view/backend/uploads.php';
//        break;
//    case '/rediger_admins' :
//        require __DIR__ . '/view/backend/editAdmins.php';
//        break;
////    case '/rediger_medarbejder' :
////        require __DIR__ . '/controller/EmployeeController.php';
////        break;
//
//
//    default:
//        require __DIR__ . '/view/frontend/index.php';
//        break;
//}

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

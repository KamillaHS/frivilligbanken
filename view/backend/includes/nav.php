<?php
require_once("view/backend/includes/session.php");
$admin_username = $_SESSION['username'];
?>

<nav>
    <div class="nav-wrapper">
        <div id="logo-box">
            <a href="/dashboard"><img src="../../../images/logo/logoIconOutline.png" alt=""></a>
        </div>
        <ul id="nav-items">
            <li><a href="/dashboard">Frivilligbanken</a></li>
        </ul>

        <ul id="nav-right">
            <li id="admin_user_nav"><a href="/admin_profil"><img src="https://secureimages.allrecipes.com/userphotos/250x250/8531051.jpg" /><?php echo $admin_username ?></a></li>
            <li><a href="/adminLogOut">Log ud</a></li>
        </ul>
    </div>
</nav>


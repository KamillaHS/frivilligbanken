<?php
require_once("db/dbcon.php");
require_once("view/backend/includes/session.php");
if (logged_in()) {
    // header("Location: index.php");
    echo "<script>location.href = 'admin'</script>";
}
?>


<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/view/backend/css/login.style.css">

    <title>Frivilligbanken: Admin Login</title>

</head>

<?php
// START FORM PROCESSING
if (isset($_POST['submitLogin'])
    && !empty($_POST['username'])
    && !empty($_POST['pass'])) { // Form has been submitted.
    $username = htmlspecialchars($_POST['username']);
    $password = $_POST['pass'];
    $password_hashed = crypt($password);

    $dbCon = dbCon($user, $pass);
    $query = $dbCon->prepare("SELECT * FROM `webadmin` WHERE `Username` = ?");
    $query->bindParam(1, $username);
    $query->execute();
    $getAdmin = $query->fetch();

    if($password == $getAdmin['Password']){
        $_SESSION['admin_id'] = $getAdmin['WebAdminID'];
        $_SESSION['username'] = $getAdmin['Username'];
        echo "Hello " . $_SESSION['username'];
        echo "<script>location.href = '/admin'</script>";
    } else {
        echo '<script type="text/javascript">alert("Brugernavn eller password er forkert...");</script>';
    }
}
else { // Form has not been submitted.
    if (isset($_GET['logout']) && $_GET['logout'] == 1) {
        $message = "Du er nu logget ud.";
    }
}
?>

<div id="background">
    <div id="admin-login">
        <form action="" id="login-form" method="POST" name="login">
            <h1 id="admin-login-title">Login</h1>
            <input id="admin-username" name="username" placeholder="Brugernavn" type="text" value="" />
            <input id="admin-pass" name="pass" placeholder="Password" type="password" value="" />
            <button type="submit" value="Login" id="admin-login-button" class="waves-effect waves-light btn" name="submitLogin">Login</button>
        </form>
    </div>
</div>

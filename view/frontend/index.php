<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield` WHERE ImageID = 1");
$query->execute();
$getheroimg = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `imagefield` WHERE ImageID = 2");
$query->execute();
$getphoneimg = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 1");
$query->execute();
$getfronttext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textfield` WHERE TextFieldID = 2");
$query->execute();
$getfronttext2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT COUNT(UserID) FROM `user`");
$query->execute();
$getnumusers = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT COUNT(VolunteerID) FROM volunteer");
$query->execute();
$getnumvolunteers = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT COUNT(UnionID) FROM `union`");
$query->execute();
$getnumunions = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT COUNT(GiftcardID) FROM giftcard");
$query->execute();
$getnumgiftcards = $query->fetch();

?>

<div id="section1" style="background-image: url('<?php echo $getheroimg['Image'] ?>')">
    <div id="section1-content">

        <div id="frontpage-logo">
            <img src="../../images/logo/LogoEdit.png" alt="Frivilligbanken logo">
            <p>Vi gør det sjovere at være frivillig</p>
        </div>

        <div id="buttons">
            <div id="buttonarea1">
                <button onclick="window.location.href = '/login&opret';" class="waves-effect waves-light btn">BLIV FRIVILLIG</button>
                <a href="/for_frivillige"><p>Læs mere om at være frivillig her</p></a>
            </div>
            <div id="buttonarea2">
                <button onclick="window.location.href = '/login&opret';" class="waves-effect waves-light btn">BLIV SPONSOR</button>
                <a href="/for_sponsorer"><p>Læs mere om at være sponsor her</p></a>
            </div>
            <div id="buttonarea2">
                <button onclick="window.location.href = '/login&opret';" class="waves-effect waves-light btn">OPRET FORENING</button>
                <a href="/for_foreninger"><p>Læs mere om at være forening her</p></a>
            </div>
        </div>
    </div>
</div>

<div id="section2">
    <div id="section2-content">

        <h2>LIVE DATA</h2>
        <div id="line"></div>

        <div id="live-data">
            <div id="users">
                <div id="ring1">
                    <div id="ring2">
                        <i class="material-icons">person</i>
                    </div>
                </div>
                <p id="user-number"><?php echo $getnumusers[0] ?></p>
                <p id="user-text">Brugere</p>
            </div>
            <div id="volunteers">
                <div id="ring1">
                    <div id="ring2">
                        <i class="material-icons">group</i>
                    </div>
                </div>
                <p id="volunteer-number"><?php echo $getnumvolunteers[0] ?></p>
                <p id="volunteer-text">Frivillige</p>
            </div>
            <div id="unions">
                <div id="ring1">
                    <div id="ring2">
                        <i class="material-icons">account_balance</i>
                    </div>
                </div>
                <p id="union-number"><?php echo $getnumunions[0] ?></p>
                <p id="union-text">Foreninger</p>
            </div>
            <div id="giftcards">
                <div id="ring1">
                    <div id="ring2">
                        <i class="material-icons">loyalty</i>
                    </div>
                </div>
                <p id="giftcard-number"><?php echo $getnumgiftcards[0] ?></p>
                <p id="giftcard-text">Gavekort</p>
            </div>
        </div>

    </div>
</div>

<div id="section3">
    <div id="section3-content">
        <h2><?php echo $getfronttext1['FieldName'] ?></h2>
        <div id="line"></div>
        <p>
            <?php echo $getfronttext1['FieldContent'] ?>
        </p>
    </div>
</div>

<div id="section4">
    <div id="section4-content">
        <div id="section4-left">
            <img src="<?php echo $getphoneimg['Image'] ?>" alt="Iphone og Android billede">
        </div>
        <div id="section4-right">
            <h2><?php echo $getfronttext2['FieldName'] ?></h2>
            <div id="line"></div>
            <p>
                <?php echo $getfronttext2['FieldContent'] ?>
            </p>
        </div>
    </div>
</div>


<?php
require_once("view/frontend/includes/footer.php");
?>

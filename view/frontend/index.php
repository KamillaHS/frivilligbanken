<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 1");
$query->execute();
$getfronttext1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 2");
$query->execute();
$getfronttext2 = $query->fetch();

?>

<div id="section1">
    <div id="section1-content">

        <div id="frontpage-logo">
            <img src="../../logo/logoEdit.png" alt="Frivilligbanken logo">
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
                <p id="user-number">0</p>
                <p id="user-text">Brugere</p>
            </div>
            <div id="volunteers">
                <div id="ring1">
                    <div id="ring2">
                        <i class="material-icons">group</i>
                    </div>
                </div>
                <p id="volunteer-number">0</p>
                <p id="volunteer-text">Frivillige</p>
            </div>
            <div id="unions">
                <div id="ring1">
                    <div id="ring2">
                        <i class="material-icons">account_balance</i>
                    </div>
                </div>
                <p id="union-number">0</p>
                <p id="union-text">Foreninger</p>
            </div>
            <div id="giftcards">
                <div id="ring1">
                    <div id="ring2">
                        <i class="material-icons">loyalty</i>
                    </div>
                </div>
                <p id="giftcard-number">0</p>
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
            <img src="../../logo/IphoneAndAndroid.png" alt="Iphone og Android billede">
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

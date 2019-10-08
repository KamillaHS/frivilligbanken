<?php
$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT SponsorID, SponsorName, SponsorPic, Website FROM `sponsor` WHERE Status = 'Guld' LIMIT 6");
$query->execute();
$getsponsors = $query->fetchAll();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM textfield WHERE TextFieldID = 32");
$query->execute();
$getaddress = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM textfield WHERE TextFieldID = 29");
$query->execute();
$getphone = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM textfield WHERE TextFieldID = 31");
$query->execute();
$getmail = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM textfield WHERE TextFieldID = 33");
$query->execute();
$getsocial1 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM textfield WHERE TextFieldID = 34");
$query->execute();
$getsocial2 = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM textfield WHERE TextFieldID = 35");
$query->execute();
$getsocial3 = $query->fetch();
?>

<link rel="stylesheet" href="css/footer.style.css">

</div>

<footer class="page-footer">
    <div id="footer-content">
        <div id="footer-left">
            <h3>Sitemap</h3>
            <ul>
                <li><a href="/">Forside</a></li>
                <li><a href="/for_foreninger">Værd at Vide - Foreninger</a></li>
                <li><a href="/for_sponsorer">Værd at Vide - Sponsorer</a></li>
                <li><a href="/for_frivillige">Værd at Vide - Frivillige</a></li>
                <li><a href="/om">Hvem er Vi</a></li>
                <li><a href="/sponsorer">Sponsorer</a></li>
                <li><a href="/kontakt">Kontakt os</a></li>
                <li><a href="/login&opret">Login / Opret Profil</a></li>
            </ul>
        </div>
        <div id="footer-mid">
            <h3>Kontaktoplysninger</h3>
            <ul>
                <li><?php echo $getaddress['FieldContent'] ?></li>
                <li><?php echo $getphone['FieldContent'] ?></li>
                <li><?php echo $getmail['FieldContent'] ?></li>
                <li>
                    <a href="<?php echo "http://" . $getsocial1['FieldContent'] ?>"><img src="../../../images/icons/facebook.svg" alt=""></a>
                    <a href="<?php echo "http://" . $getsocial2['FieldContent'] ?>"><img src="../../../images/icons/linkedin.svg" alt=""></a>
                    <a href="<?php echo "http://" . $getsocial3['FieldContent'] ?>"><img src="../../../images/icons/instagram.svg" alt=""></a>
                </li>
            </ul>
        </div>
        <div id="footer-right">
            <h3>Sponsorer</h3>
            <div id="sponsor-highlight-box">
                <?php
                foreach($getsponsors as $sponsor)
                {
                    ?>
                    <a href="<?php echo "http://" . $sponsor['Website'] ?>">
                        <div id="sponsor-highlighted" style="background-image: url('<?php echo $sponsor['SponsorPic'] ?>')">
                            <div id="sponsor-hover-box">
                                <p>
                                    <?php echo $sponsor['SponsorName'] ?>
                                </p>
                            </div>
                        </div>
                    </a>
                    <?php
                }
                ?>
            </div>
            <a id="link-to-sponsor-page" href="/sponsorer"><p>Se alle sponsorer her</p></a>
        </div>
    </div>
    © 2019 Copyright Frivilligbanken
</footer>

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
<?php
$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT SponsorID, SponsorName, SponsorPic, Website FROM `sponsor`");
$query->execute();
$getsponsors = $query->fetchAll();
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
                <li>Adresse</li>
                <li>Telefon</li>
                <li>Mail</li>
                <li>
                    <a href=""><i class="material-icons">share</i></a>
                    <a href=""><i class="material-icons">share</i></a>
                    <a href=""><i class="material-icons">share</i></a>
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
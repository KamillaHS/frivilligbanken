<?php
require_once("view/frontend/includes/header.php");

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT * FROM `textField` WHERE TextFieldID = 7");
$query->execute();
$getsponsortext = $query->fetch();

$dbCon = dbCon($user, $pass);
$query = $dbCon->prepare("SELECT SponsorID, SponsorName, SponsorPic, Website FROM `sponsor`");
$query->execute();
$getsponsors = $query->fetchAll();
?>
    <link rel="stylesheet" href="/view/frontend/css/sponsor.style.css">

    <div id="sponsor-section1">
        <div id="sponsor-section1-content">
            <h2>SPONSORER</h2>
            <div id="line"></div>
            <p id="sponsor-text">
                <?php
                    echo $getsponsortext['TextFieldContent']
                ?>
            </p>
        </div>
    </div>

    <div id="sponsor-section2">
        <div id="sponsor-section2-content">
            <div id="sponsor-box">
                <?php
                foreach($getsponsors as $sponsor)
                {
                    ?>
                    <a href="<?php echo "http://" . $sponsor['Website'] ?>">
                        <div id="sponsor" style="background-image: url('<?php echo $sponsor['SponsorPic'] ?>')">
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
        </div>
    </div>
    </div>


<?php
require_once("view/frontend/includes/footer.php");
?>
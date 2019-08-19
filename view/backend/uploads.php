<?php require_once("view/backend/includes/header.php"); ?>
    <link rel="stylesheet" href="view/backend/css/uploads.style.css">

    <div id="dashboard">
        <?php require_once ("view/backend/includes/sidenav.php")?>
        <div id="dashboard-content">
            <h1>Uploads</h1>
            <div id="dashboard-section1">
                <p>
                    Vælg mappe:
                </p>
                <div id="choose-folder">
<!--                    <div id="folderOption" onclick="showImages()">Billeder</div>-->
<!--                    <div id="folderOption" onclick="showImages()">Logo</div>-->

                    <form method="POST" action="">
                        <p>
                            <label>
                                <input name="folder" value="folder1" type="radio" onchange="this.form.submit()"/>
                                <span>Billeder til Sektioner</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input name="folder" value="folder2" type="radio" onchange="this.form.submit()" />
                                <span>Logo</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input name="folder" value="folder3" type="radio" onchange="this.form.submit()" />
                                <span>Ikoner</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input name="folder" value="folder4" type="radio" onchange="this.form.submit()" />
                                <span>Sponsor Billeder</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input name="folder" value="folder5" type="radio" onchange="this.form.submit()" />
                                <span>Medarbejder Billeder</span>
                            </label>
                        </p>
                    </form>

                    <div id="show-folder-content">
                        <?php
                        if($_SERVER['REQUEST_METHOD'] == 'POST') {
                            $chosen = $_POST['folder'];
                            if ($chosen == "folder1") {
                                $dirname = "images/imagefields/";
                                $images = glob($dirname."*");

                                foreach($images as $image) {
                                    ?>
                                    <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                                        <div id="hover-buttons">
                                            <form action="">
                                                <button name="delete" id="delete" class="waves-effect waves-light btn"><i class="material-icons">delete_forever</i></button>
                                            </form>
                                        </div>
                                    </div>
                                    <?php
                                }
                            }
                            elseif($chosen == "folder2") {
                                $dirname = "images/logo/";
                                $images = glob($dirname."*");

                                foreach($images as $image) {
                                    ?>
                                    <div id="logos-box">
                                        <div id="hover-buttons">
                                            <button id="delete" class="waves-effect waves-light btn"><i class="material-icons">delete_forever</i></button>
                                        </div>
                                        <img id="logos" src="<?php echo $image ?>" alt="">
                                    </div>
                                    <?php
                                }
                            }
                            elseif($chosen == "folder3") {
                                $dirname = "images/icons/";
                                $images = glob($dirname."*");

                                foreach($images as $image) {
                                    ?>
                                    <div id="logos-box">
                                        <div id="hover-buttons">
                                            <button id="delete" class="waves-effect waves-light btn"><i class="material-icons">delete_forever</i></button>
                                        </div>
                                        <img id="icons" src="<?php echo $image ?>" alt="">
                                    </div>
                                    <?php
                                }
                            }
                            elseif($chosen == "folder4") {
                                $dirname = "images/sponsorPics/";
                                $images = glob($dirname."*");

                                foreach($images as $image) {
                                    ?>
                                    <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                                        <div id="hover-buttons">
                                            <button id="delete" class="waves-effect waves-light btn"><i class="material-icons">delete_forever</i></button>
                                        </div>
                                    </div>
                                    <?php
                                }
                            }
                            elseif($chosen == "folder5") {
                                $dirname = "images/employeePics/";
                                $images = glob($dirname."*");

                                foreach($images as $image) {
                                    ?>
                                    <div id="showImg" style="background-image: url('<?php echo $image ?>')">
                                        <div id="hover-buttons">
                                            <button id="delete" class="waves-effect waves-light btn"><i class="material-icons">delete_forever</i></button>
                                        </div>
                                    </div>
                                    <?php
                                }
                            }
                        }

                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>


<?php require_once("view/backend/includes/footer.php"); ?>
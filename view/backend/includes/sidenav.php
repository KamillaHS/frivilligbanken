<ul id="sidenav-1" class="sidenav sidenav-fixed">
<li><a style="color: white; background-color: #31A853; height: 100%;">Hjemmeside</a></li>
    <li><a href="/dashboard">Dashboard</a></li>
    <li><a class="dropdown-button rotate" data-target="dropdown2">Sider</a></li>
    <li><a href="/medarbejdere">Medarbejdere</a></li>
    <li><a href="/sponsorere">Sponsorere</a></li>
    <li><a href="/uploads">Uploads</a></li>
    <?php
     if($_SESSION['admin_id'] == 1) {
         ?>
         <li><a href="/rediger_admins">Administrer Admins</a></li>
        <?php
     }
    ?>
    <li><a style="color: white; background-color: #31A853; height: 100%; ">App</a></li>
    <li><a href="/brugere">Brugere</a></li>
    <li><a class="dropdown-button rotate" data-target="dropdown3">Frivillige</a></li>
    <li><a class="dropdown-button rotate" data-target="dropdown4">Foreninger</a></li>
    <li><a class="dropdown-button rotate" data-target="dropdown5">Sponsorer</a></li>
</ul>

<ul id="dropdown2" class="dropdown-content">
    <li><a href="/side&forside">Forside</a></li>
    <li><a href="/side&for_foreninger">Foreninger</a></li>
    <li><a href="/side&for_sponsorere">Sponsorer</a></li>
    <li><a href="/side&for_frivillige">Frivillige</a></li>
    <li><a href="/side&om">Hvem er Vi</a></li>
    <li><a href="/side&sponsorere">Sponsorere</a></li>
    <li><a href="/side&kontakt">Kontakt</a></li>
</ul>

<ul id="dropdown3" class="dropdown-content">
    <li><a href="/frivillig_profiler">Frivillig profiler</a></li>
</ul>

<ul id="dropdown4" class="dropdown-content">
    <li><a href="/forening_profiler">Forening profiler</a></li>
</ul>

<ul id="dropdown5" class="dropdown-content">
    <li><a href="/sponsor_profiler">Sponsor Profiler</a></li>
</ul>

<script>
    $(document).ready(function(){
        $('.dropdown-button').dropdown({
                inDuration: 300,
                outDuration: 225,
                hover: false,
                constrain_width: false,
            }
        );
    });

    $(".rotate").click(function(){
        $(this).toggleClass("down")  ; 
    })
</script>
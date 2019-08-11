<ul id="sidenav-1" class="sidenav sidenav-fixed">
    <li><a href="/dashboard">Dashboard</a></li>
    <li><a class="dropdown-button" data-target="dropdown2">Sider</a></li>
    <li><a href="/medarbejdere">Medarbejdere</a></li>
    <li><a href="/sponsorere">Sponsorere</a></li>
    <li><a href="/uploads">Uploads</a></li>
    <li><a href="/rediger_admins">Administrer Admins</a></li>
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
</script>
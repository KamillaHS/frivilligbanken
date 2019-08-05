<nav>
    <div class="nav-wrapper">
        <div id="logo-box">
            <a href="/"><img src="../../../logo/logoIconOutline.png" alt=""></a>
        </div>
        <ul id="nav-items">
            <li><a href="/">Forside</a></li>
            <li><a class="dropdown-button" data-target="dropdown1">Værd at Vide</a></li>
            <li><a href="/om">Hvem er vi</a></li>
            <li><a href="/sponsorer">Sponsorer</a></li>
            <li><a href="kontakt">Kontakt</a></li>
        </ul>

        <ul id="dropdown1" class="dropdown-content">
            <li><a href="/for_foreninger">Foreninger</a></li>
            <li><a href="/for_sponsorer">Sponsorer</a></li>
            <li><a href="/for_frivillige">Frivillige</a></li>
        </ul>

        <ul id="nav-right">
            <li><a href="/login&opret">Login / Opret Profil</a></li>
        </ul>
    </div>

    <div id="nav-wrapper-mobile">
        <button id="mobile-menu-icon"><i class="material-icons">menu</i></button>
        <div id="mobile-menu">
            <ul>
                <li><a href="">Forside</a></li>
                <li><a href="">Værd at Vide</a></li>
                <li><a href="">Hvem er vi</a></li>
                <li><a href="">Sponsorer</a></li>
                <li><a href="">Kontakt</a></li>
            </ul>
        </div>
    </div>
</nav>

<script>
    $(document).ready(function(){
        $('.dropdown-button').dropdown({
            inDuration: 300,
            outDuration: 225,
            hover: true,
            constrain_width: false,
            }
        );
    });
</script>


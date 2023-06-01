<?php
    require_once("dati/dati_connesione_db.php");
    new mysqli("localhost", "root", "", "php_film_database");
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleindex.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
    <body>
        <div class="container-pagina">
            <header>
                <div class="logo">
                    <img src="immagini/logo.jpg" alt="" class="logo">
                </div>
                <nav>
                    <ul>
                    <li><a href="pagine/chi_siamo.html">CHI SIAMO?</a></li> 
                    <li><a href="#">GENERI</a>
                    <ul>
                    <li><a href="pagine/romantico.html">ROMANTICO</a></li>
                    <li><a href="pagine/avventura.html">AVVENTURA</a></li>
                    <li><a href="pagine/commedia.html">COMMEDIA</a></li>
                    <li><a href="pagine/fantascienza.html">FANTASCENZA</a></li>
                    <li><a href="pagine/horror.html">HORROR</a></li>
                    <li><a href="/registrazione.php"></a></li>
                    </ul>
                    </li>     
                </nav>
            </header>
            
    <body>

    <div class="cont__video">
            <div class="cont__video__container">
                <iframe width="100%" height="600px"src="https://www.youtube.com/embed/8g18jFHCLXk" title="YouTube video player" frameborder="0"></iframe>
            </div>
        </div>
    </div>
        
            <div class="container-centrale">
    <h1>BENVENUTI SU GICAandCO</h1>
        <h1>I FILM AMATI</h1>

        <div class="main-carousel" data-flickity='{ "cellAlign": "left", "contain": true }'>
            <div class="carousel-cell">
                <a href="pagine/avventura.php"><img src="immagini/Jungle-Cruise-696x497.jpg" alt=""></a>
            </div>
            <div class="carousel-cell">
                <a href="pagine/fantascienza.php"><img src="immagini/dune-2020-1972321.jpg" alt=""></a>
            </div>
            <div class="carousel-cell">
                <a href="pagine/horror.php"><img src="immagini/it-film (1).png" alt=""></a>
            </div>
            <div class="carousel-cell">
                <a href="pagine/commedia.php"><img src="immagini/legallyblonde.jpg" alt=""></a>
            </div>
            <div class="carousel-cell">
                <a href="pagine/romantico.php"><img src="immagini/titanic.jpg" alt=""></a>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.min.css"></script>
    
        <section class="generi">
            <div class="commedia">
                <a href="pagine/commedia.php">COMMEDIA</a>
            </div>
            <div class="romantico">
                <a href="pagine/romantico.php">ROMANTICO</a>
            </div>
            <div class="avventura">
                <a href="pagine/avventura.php">AVVENTURA</a>
            </div>
            <div class="fantascienza">
                <a href="pagine/fantascienza.php">FANTASCIENZA</a>
            </div>
            <div class="horror">
                <a href="pagine/horror.php">HORROR</a>
            </div>
            <div class="trame">
                <a href="pagine/trama.php">TRAME</a>
            </div>
            <div class="romantico">
                <a href="pagine/registrazione.php">ROMANTICO</a>
            </div>
            <div class="romantico">
                <a href="pagine/login.php">ROMANTICO</a>
            </div>
            <div class="romantico">
                <a href="pagine/biglietto.php">ROMANTICO</a>
            </div>
        </section>
    </div>
    
        <footer class="footer">
            <center>
                <img src="immagini/logo.jpg" alt="">
            </center>
            <div class="footer__content">
                <h2>GICAandCO</h2>
                <h4> Caterina Ferrera  &  Giorgia Parma </h4>
                <ul class="socials">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                    <li><a href="#"><i class="fa fa-yahoo"></i></a></li>
                </ul>
                <p>Per maggiori informazioni contattateci al numero: <b> +39 345 023 39999 </b>e scriveteci alle mail: <U>@yahoo.it - GICAandCO@gmail.com</U></p>
            </div>
            <div class="footer__bootom">
                <p>copyright &copy; 2012 GICAandCO. designed by <span>nethunt</span></p>
            </div>
        </footer>
    
</body>
</html>
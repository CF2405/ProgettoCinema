<?php
    require("../dati/dati_connesione_db.php");
	if (isset($_POST["username"])) {$username = $_POST["username"];} else {$username = "";}
	if (isset($_POST["password"])) {$password = $_POST["password"];} else {$password = "";}
	if (isset($_POST["tipologia"])) {$tipologia = $_POST["tipologia"];} else {$tipologia = "";}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="home_cliente.css">
    <title>Home personale</title>

</head>
<body>
<div class="container">
        <div class="logo">
                    <img src="../immagini/logo.jpg" alt="" class="logo" width="60" height="60" >
                    <h1 class="titolo">GICAandCO</h1>
                    <img src="../immagini/logo.jpg" alt="" class="logo"  width="60" height="60">
        </div> 
       
        <div class="topnav">
            <a href="pagine\logout.php">Log Out</a>
            <a href="index.php">Home Page</a>
        </div>           
</div>


    <div class="row">
    <div class="column">
        <h2>Inizia a guardare: 'Oppenheimer'</h2>
        <img src="https://upload.wikimedia.org/wikipedia/it/thumb/4/4a/Oppenheimer_%28film%29.jpg/1200px-Oppenheimer_%28film%29.jpg" alt="">
        <p>Il fisico J Robert Oppenheimer lavora con una squadra di scienziati durante il Progetto Manhattan, che porta allo sviluppo della bomba atomica.</p>
    </div>
    
    <div class="column">
    <h2>Inizia a guardare: 'Dunkirk'</h2>
        <img src="https://images.squarespace-cdn.com/content/v1/570c1514c2ea513f7d99d605/1501176181517-QDJMWR0I5H0PR2WQ7B2R/image-asset.jpeg?format=1000w" alt="">
        <p>L'esercito inglese, impegnato a liberare le truppe alleate dalla Francia occupata dai nazisti, 
            resta intrappolato sulla spiaggia con le spalle al mare e devone affrontare una situazione impossibile mentre il nemico avanza.</p>
    </div>
    
    <div class="column">
    <h2>Inizia a guardare: 'Batman Begins'</h2>
        <img src="https://cdn.gelestatic.it/kataweb/tvzap/2018/04/Batman-Begins_1000.jpg" alt="">
        <p >Traumatizzato dalla morte dei genitori, il giovane Bruce Wayne intraprende un 
            addestramento fisico e psicologico con il suo mentore per prepararsi alla lotta contro il male nella città di Gotham City.</p>
    </div>
    </div>
    
    <div class="buttonspan">
        
        <p><input class="button1" type="submit" value="Stream now"></p>
        <p><input class="button2" type="submit" value="All episodes"></p>
    </div>
   
    <h1>I FILM PIU' POPOLARI DI QUESTA SETTIMANA</h1>

        <div class="gallery">
            <img src="https://www.mariocastle.it/news/wp-content/uploads/2023/04/copertina-super-mario-bros-il-film.jpg" alt="">
            <img src="https://www.teamworld.it/wp-content/uploads/2022/04/Animali-Fantastici-I-Segreti-di-Silente-poster-del-film.jpg" alt="">
            <img src="https://pad.mymovies.it/filmclub/2019/11/085/covermd_home.jpg" alt="">
            <img src="https://www.sorrisi.com/wp-content/uploads/2022/07/the-lost-city-886x494.jpg" alt="">
            <img src="https://www.spyit.it/wp-content/uploads/2022/06/Little_Mermaid_Poster-la-sirenetta.jpg" alt="">
        </div>

  
    















    
</body>
</html>
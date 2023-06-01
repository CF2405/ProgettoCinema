<?php
require("../dati/dati_connesione_db.php"); 
if (isset($_POST["biglietto"])) {$biglietto = $_POST["biglietto"];} else {$biglietto = "";}
if (isset($_POST["quantità"])) {$quantità = $_POST["quantità"];} else {$quantità = "";}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body> 
    <h1>BIGLIETTERIA:</h1>
	<h2>Compra il biglietto online per goderti una magnifica esperienza con GICAandCO</h2>

    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
            <table id="tab_dati_personali">

		Tipologia di biglietto:<br />

		

<?php
	session_start();

	require("../dati/daticonnetti_db.php");
    if(isset($_POST["nome"])) $nome = $_POST["nome"];  else $nome = "";
    if(isset($_POST["annonascita"])) $annonascita = $_POST["annonascita"];  else $annonascita = "";

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Registrazione</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="../pagine/styleregistrazione.css">
    </head>
    
    <body>
        <form method="post" action="/php/register.php">
            <h1>REGISTRAZIONE UTENTE</h1>
            <p>Inserisci i tuoi dati. Username e password sono obbligatori per la registrazione. Tutti i dati tranne l'userneme saranno modificabili successivamente</p>
            <input type="text" id="username" placeholder="Username" name="nome" maxlength="50" required>
            <input type="password" id="password" placeholder="Password" name="annonascita" required>
            <button type="submit" name="register">Registrati</button>
        </form>
    </body>
</html>
<?php
session_start(); 

require("../dati/dati_connesione_db.php");
if(isset($_POST["titolo"])){$titolo=$_POST["titolo"]; } else{$titolo=""; }
if(isset($_POST["username"])){$username=$_POST["username"]; } else{$username=""; }
if(isset($_POST["conferma"])){$conferma=$_POST["conferma"]; } else{$conferma=""; }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../pagine/listautente.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
    <h1>LA PAGINA DEDICATA ALL'UTENTE:</h1>
<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
            <table id="tab_dati_personali">
                <h2>ACCEDERE AL PROPRIO ACCOUNT:</h2>
                <h4>questo campo è importante per verificare l'identità della persona che desidera comprare
                    un biglietto.</h4>
                   
                    <tr>username:</tr>
                    <tr><input type="text" name="username" <?php echo "value = '$username'" ?> required></tr>
                    
                    <tr>password:</tr>
                    <tr><input type="password" name="password" value="" required></tr>

            </table>
            <p style="text-align: center">
                <input type="submit" value="ACCEDI">
            </p>

            <?php
			if (isset($_POST["username"]) and isset($_POST["password"])) {
				$conn = new mysqli($db_servername,$db_username,$db_password,$db_name);
				if($conn->connect_error){
					die("<p>Connessione al server non riuscita: ".$conn->connect_error."</p>");
				}

				$query = "SELECT utente.username, utente.password 
							FROM utente 
							WHERE username='$username' AND password='$password'";

				$ris = $conn->query($myquery) or die("<p>Query fallita! ".$conn->error."</p>");

				if($ris->num_rows == 0){
					echo "<p>Utente non trovato o password errata</p>";
					$conn->close();
				} 
				else {
					echo "<p>Utente trovato</p>";
                    header('location: logout.php');
				}
			}

		?>	
        </form>
        </div>
        <div class="container_liste">
        <h1>LISTA DEI FILM COMPRATI DALL'UTENTE:</h1>
        <?php
            $conn = new mysqli($db_servername,$db_username,$db_password,$db_name);
            if($conn->connect_error){
                die("<p>Connessione al server non riuscita: ".$conn->connect_error."</p>");
            }

            $query= "SELECT film.titolo, attori.nome, attori.cognome 
            FROM utente JOIN film ON utente.username = film.codutente
                        JOIN attori ON film.codattore = attori.codice_matricola  
            WHERE username='$username'";

        $ris=$conn->query($query) or die("<p>Query fallita! ".$conn->error."</p>");
        if ($ris->num_rows == 0) {
            echo "<p style='text-align:center'>Nessuno";
        } else {
            echo "<ol>";
            foreach($ris as $riga){
                $titolo = $riga['titolo'];
                $nome = $riga["nome"];
                $cognome = $riga["cognome"];
                echo <<<EOD
                    <li>
                        $titolo - $nome $cognome
                    </li>
                EOD;
            }	
            echo "</ol>";
        }
        ?>
        </div>

</body>
</html>
<?php
    require("../dati/dati_connesione_db.php");
	if (isset($_POST["username"])) {$username = $_POST["username"];} else {$username = "";}
	if (isset($_POST["password"])) {$password = $_POST["password"];} else {$password = "";}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../pagine/stylelogin.css">
    <title>LOGIN</title>
</head>
<body>
<div class="container">
        <div class="logo">
                    <img src="../immagini/logo.jpg" alt="" class="logo" width="60" height="60" >
                    <h1>GICAandCO</h1>
                    <img src="../immagini/logo.jpg" alt="" class="logo"  width="60" height="60">
                    <h2>se possiedi già un account accedi:</h2>
    </div> 
        
</div>
<div class="container">
<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
            <table id="tab_dati_personali">
                <h2>ACCEDERE AL PROPRIO ACCOUNT:</h2>
                   
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

				$myquery = "SELECT username, password 
							FROM $utente 
							WHERE username='$username'
								AND password='$password'";

				$ris = $conn->query($myquery) or die("<p>Query fallita! ".$conn->error."</p>");

				if($ris->num_rows == 0){
					echo "<p>Utente non trovato o password errata</p>";
					$conn->close();
				} 
				else {
					echo "<p>Utente trovato</p>";
				}
			}

		?>	
        </form>
        </div>
    
</body>
</html>
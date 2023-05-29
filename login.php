<?php
	 $db_servername = "localhost";
	 $db_username = "root";
	 $db_password = "";
	require("./data/dati_connessione_db.php");
	if (isset($_POST["username"])) {$username = $_POST["username"];} else {$username = "";}
	if (isset($_POST["password"])) {$password = $_POST["password"];} else {$password = "";}
	if (isset($_POST["tipologia"])) {$tipologia = $_POST["tipologia"];} else {$tipologia = "";}
?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="login.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<title>GiCa & CO - Login</title>
	<link rel="stylesheet" type="text/css" href="login.css">
</head>

<body>
	<div class="nav">
		<div class="centratonav">
			<ul class="navlinks">
				<li><a href="pagine/registrazione.php">Registrati</a></li>
			</ul>
		</div>
	</div>
	<div class="contenuto">
		<h1>GiCa & CO Online</h1>
		<h2>Pagina di Login</h2>

		<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
			<table class="tab_input">
				<tr>
					<td>Username:</td> <td><input type="text" name="username" value="<?php echo $username; ?>" required></td>
				</tr>
				<tr>
					<td>Password:</td> <td><input type="password" name="password" value="<?php /*echo $password; */?>" required></td>
				</tr>
			</table>
			<p><input type="submit" value="ACCEDI"></p>
		</form>
		<?php
			if (isset($_POST["username"]) and isset($_POST["password"]) and isset($_POST["tipologia"])) {
				$conn = new mysqli($db_servername,$db_username,$db_password,$db_name);
				if($conn->connect_error){
					die("<p>Connessione al server non riuscita: ".$conn->connect_error."</p>");
				}

				$myquery = "SELECT username, password 
							FROM $tipologia 
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
	</div>

	<?php 
		include('pagine/footer.php')
	?>
</body>
</html>
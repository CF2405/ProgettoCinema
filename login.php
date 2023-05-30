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

	<div class="contenuto">
		
		<div class="titoli">
			<h1>GiCa & Co</h1>
			<h2>Benvenuto nella pagina di Login!</h2>
		</div>
		
		<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
			<table class="tab_input">
				<tr>
					<td>Username:</td> <td><input type="text" name="username" value="<?php echo $username; ?>" required></td>
				</tr>
				<tr>
					<td>Password:</td> <td><input type="password" name="password" value="<?php echo $password; ?>" required></td>
				</tr>
			</table>
			<div class="accedi"><input type="submit" value="ACCEDI"></div>	
		</form>

	</div>

	<?php 
		include('pagine/footer.php')
	?>

</body>

</html>
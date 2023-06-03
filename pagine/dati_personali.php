<?php
	session_start();
	require('../data/dati_connessione_db.php');
	if(!isset($_SESSION['username'])){
		header('location: ../index.php');
	}
	if( $_SESSION["tipologia"]!="utenti"){
	    header('location: logout.php');
	}
	$username = $_SESSION["username"];

	$strabilita = "Sblocca";
	$strblocca = "Modifica";

	$conn = new mysqli($db_servername,$db_username,$db_password,$db_name);
	$modifica = false;
    $val_pulsante = $strabilita;
	if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["pulsante_modifica"])) {
		if($_POST["pulsante_modifica"] == $strabilita){
			$modifica = true;
            $val_pulsante = $strblocca;
		} else {
            $modifica = false;
            $val_pulsante = $strabilita;
		}
		if ($modifica == false){
			$sql = "UPDATE utenti
					SET password = '".$_POST["password"]."', 
						nome = '".$_POST["nome"]."', 
						cognome = '".$_POST["cognome"]."', 
						email = '".$_POST["email"]."', 
						telefono = '".$_POST["telefono"]."', 
						comune = '".$_POST["comune"]."', 
						indirizzo = '".$_POST["indirizzo"]."' 
					WHERE username = '".$username."'";
			if($conn->query($sql) === true)  else {echo "Error updating record: " . $conn->error;}
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<title>Biblioteca - Dati personali</title>
	<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
	<?php require("nav.php");?>
	<div class="contenuto">
		<h1>Dati Personali</h1>
		<?php
			$sql = "SELECT username, password, nome, cognome, email, telefono, comune, indirizzo 
				FROM utenti 
				WHERE username='".$username."'";
			$ris = $conn->query($sql) or die("<p>Query fallita!</p>");
			$row = $ris->fetch_assoc();
		?>
		<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
			<table id="tab_dati_personali">
				<tr>
					<td>Username:</td> <td><input class="input_dati_personali" type="text" name="username" value="<?php echo $row["username"]; ?>" disabled="disabled"></td>
				</tr>
				<tr>
					<td>Password:</td> <td><input class="input_dati_personali" type="text" name="password" value="<?php echo $row["password"]; ?>" <?php if(!$modifica) echo "disabled='disabled'"?>></td>
				</tr>
				<tr>
					<td>Nome:</td> <td><input class="input_dati_personali" type="text" name="nome" value="<?php echo $row["nome"]; ?>" <?php if(!$modifica) echo "disabled='disabled'"?>></td>
				</tr>
				<tr>
					<td>Cognome:</td> <td><input type="text" class="input_dati_personali" name="cognome" value="<?php echo $row["cognome"]; ?>" <?php if(!$modifica) echo "disabled='disabled'"?>></td>
				</tr>
				<tr>
					<td>Email:</td> <td><input type="text" class="input_dati_personali" name="email" value="<?php echo $row["email"]; ?>" <?php if(!$modifica) echo "disabled='disabled'"?>></td>
				</tr>
				<tr>
					<td>Telefono:</td> <td><input type="text" class="input_dati_personali" name="telefono" value="<?php echo $row["telefono"]; ?>" <?php if(!$modifica) echo "disabled='disabled'"?>></td>
				</tr>
				<tr>
					<td>Comune:</td> <td><input type="text" class="input_dati_personali" name="comune" value="<?php echo $row["comune"]; ?>" <?php if(!$modifica) echo "disabled='disabled'"?>></td>
				</tr>
				<tr>
					<td>Indirizzo:</td> <td><input type="text" class="input_dati_personali" name="indirizzo" value="<?php echo $row["indirizzo"]; ?>" <?php if(!$modifica) echo "disabled='disabled'"?>></td>
				</tr>
			</table>
			<p style="text-align: center">
				<input type="submit" name="pulsante_modifica" value="<?php echo $val_pulsante; ?>">
			</p>
		</form>	
	</div>	
</body>
</html>
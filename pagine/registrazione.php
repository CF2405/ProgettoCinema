
<?php 
    require("../dati/dati_connesione_db.php");
    if(isset($_POST["username"])) $username = $_POST["username"];  else $username = "";
    if(isset($_POST["password"])) $password = $_POST["password"];  else $password = "";
    if(isset($_POST["conferma"])) $conferma = $_POST["conferma"];  else $conferma = "";
    if(isset($_POST["nome"])) $nome = $_POST["nome"];  else $nome = "";
    if(isset($_POST["cognome"])) $cognome = $_POST["cognome"];  else $cognome = "";
    if(isset($_POST["email"])) $email = $_POST["email"];  else $email = "";
    if(isset($_POST["telefono"])) $telefono = $_POST["telefono"];  else $telefono = "";
    if(isset($_POST["numero_civico"])) $numero_civico = $_POST["numero_civico"];  else $numero_civico = "";
    if(isset($_POST["indirizzo"])) $indirizzo = $_POST["indirizzo"];  else $indirizzo = "";
    if(isset($_POST["città"])) $città = $_POST["città"];  else $città = "";
    if(isset($_POST["data_nascita"])) $data_nascita = $_POST["data_nascita"];  else $data_nascita = "";
    if(isset($_POST["tipologia"])) $tipologia = $_POST["tipologia"];  else $tipologia = "utente";
?>

<!DOCTYPE html>
<html>
    <head>
        <title>GICAandCO/Registrazione</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="../pagine/styleregistrazione.css">
    </head>
    
    <body>

    <div class="container">
        <div class="logo">
                    <img src="../immagini/logo.jpg" alt="" class="logo" width="60" height="60" >
                    <h1>GICAandCO</h1>
                    <img src="../immagini/logo.jpg" alt="" class="logo"  width="60" height="60">
                    <h2>Create your first account</h2>
        </div> 
        
</div>

<div class="container_table">

        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
            <table id="tab_dati_personali">
                    <tr>scegli un username:</tr>
                    <tr><input class="input_dati_personali" type="text" name="username" <?php echo "value = '$username'" ?> required></tr>
                    
                    <tr>nome:</tr>
                    <tr><input class="input_dati_personali" type="text" name="nome" <?php echo "value = '$nome'" ?> required></tr>

                    <tr>cognome:</tr>
                    <tr><input class="input_dati_personali" type="text" name="cognome" <?php echo "value = '$cognome'" ?> required></tr>
                    
                    <tr>data di nascita:</tr>
                    <tr><input type="text" class="input_dati_personali" name="data_nascita" <?php echo "value = '$data_nascita'" ?>></tr>

                    <tr>città:</tr>
                    <tr><input type="text" class="input_dati_personali" name="città" <?php echo "value = '$città'" ?>></tr>

                    <tr>Indirizzo:</tr>
                    <tr><input type="text" class="input_dati_personali" name="indirizzo" <?php echo "value = '$indirizzo'" ?>></tr>
                   
                    <tr>Numero Civico:</tr>
                    <tr><input type="text" class="input_dati_personali" name="numero_civico" <?php echo "value = '$numero_civico'" ?>></tr>


                    <tr>Email:</tr>
                    <tr><input type="text" class="input_dati_personali" name="email" <?php echo "value = '$email'" ?>></tr>
       
                    <tr>Telefono:</tr>
                    <tr><input type="text" class="input_dati_personali" name="telefono" <?php echo "value = '$telefono'" ?>></tr>
              
                    <tr>Password:</tr>
                    <tr><input class="input_dati_personali" type="password" name="password" <?php echo "value = '$password'" ?> required></tr>
        
                    <tr>Re-enter password:</tr>
                    <tr><input class="input_dati_personali" type="password" name="conferma" <?php echo "value = '$conferma'" ?> required></tr>
                    <tr><p>Password must be at least 6 characters.</p></tr> 
                </tr>
            </table>
            <p style="text-align: center">
                <input type="submit" value="Invia">
            </p>
        </form>

    </div>
    <?php 
        error_reporting(E_ALL ^ E_WARNING);
		include('footer.php');
	?>
</body>

 
</html>
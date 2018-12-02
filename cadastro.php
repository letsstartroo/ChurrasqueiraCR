<?php 
DEFINE ('DBUSER', 'LetsStart'); 
DEFINE ('DBPW', 'asdd1234');
DEFINE ('DBHOST', 'localhost');
DEFINE ('DBNAME', 'LetsStart');
$dbc = mysqli_connect(DBHOST,DBUSER,DBPW);
if (!$dbc) {
    die("Database connection failed: " . mysqli_error($dbc));
    exit();
}
$dbs = mysqli_select_db($dbc, DBNAME);
if (!$dbs) {
    die("Database selection failed: " . mysqli_error($dbc));
    exit();
}
$Nome = mysqli_real_escape_string($dbc, $_GET['nome']);
$Cpf = mysqli_real_escape_string($dbc,$_GET['cpf']);
$Login = mysqli_real_escape_string($dbc,$_GET['login']);
$Senha = mysqli_real_escape_string($dbc,$_GET['senha']);
$query = "INSERT INTO usuario (nome, cpf, email, senha) VALUES ('$Nome', '$Cpf', '$Login', '$Senha')";
$result = mysqli_query($dbc, $query) or trigger_error("Query MySQL Error: " . mysqli_error($dbc));
mysqli_close($dbc);
?>

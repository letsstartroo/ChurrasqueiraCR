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
$Login = mysqli_real_escape_string($dbc,$_GET['login']);
$Senha = mysqli_real_escape_string($dbc,$_GET['senha']);
$verifica = mysqli_query($dbc, "SELECT * FROM usuario WHERE cpf = '$Login' AND senha = '$Senha'");
if (mysqli_num_rows($verifica)<=0){
    echo "0";
}else{
    echo "1";
}
?>
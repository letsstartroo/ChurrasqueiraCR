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

$imgName = time().".png";
$pasta = 'imagens/';
$data = file_get_contents('php://input');

file_put_contents($pasta.$imgName, $data);

$Usuario = mysqli_real_escape_string($dbc, $_GET['usuario']);
$Descricao = mysqli_real_escape_string($dbc,$_GET['descricao']);
$Latitude = mysqli_real_escape_string($dbc,$_GET['latitude']);
$Longitude = mysqli_real_escape_string($dbc,$_GET['longitude']);
$Imagem = $imgName;
$DataDia = mysqli_real_escape_string($dbc,$_GET['datadia']);
$DataMes = mysqli_real_escape_string($dbc,$_GET['datames']);
$DataAno = mysqli_real_escape_string($dbc,$_GET['dataano']);
$HoraMin = mysqli_real_escape_string($dbc,$_GET['horamin']);
$HoraHor = mysqli_real_escape_string($dbc,$_GET['horahor']);
$query = "INSERT INTO evento (usuario, descricao, latitude, longitude, imagem, datadia, datames, dataano, horamin, horahor) VALUES ('$Usuario', '$Descricao', '$Latitude', '$Longitude', '$Imagem', '$DataDia', '$DataMes', '$DataAno', '$HoraMin', '$HoraHor')";
$result = mysqli_query($dbc, $query) or trigger_error("Query MySQL Error: " . mysqli_error($dbc));
mysqli_close($dbc);
?>
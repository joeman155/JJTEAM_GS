<html>
  <head>
    <title>Status</title>
    <link rel="stylesheet" href="images.css">

  <script src="jq/jquery-1.9.1.js"></script>
  <script src="jq/ui/jquery.ui.core.js"></script>
  <script src="jq/ui/jquery.ui.widget.js"></script>
  <script src="jq/ui/jquery.ui.mouse.js"></script>
  <script src="jq/ui/jquery.ui.button.js"></script>
  <script src="jq/ui/jquery.ui.position.js"></script>
  <script src="jq/ui/jquery.ui.effect.js"></script>
  <script src="jq/ui/jquery.ui.effect-slide.js"></script>
  <script src="jq/ui/jquery.ui.tabs.js"></script>

  </head>
<body>

<?

# Get all the latest measurements
try {
     $dbh = new PDO("sqlite:/home/root/hope/hope.db");
    }
catch (PDOException $e)
    {
     echo $e->getMessage();
    }

# GPS
$sql = "select * from gps_t where id = (select max(id) from gps_t)";

$sth = $dbh->prepare($sql);

$sth->execute();

$row = $sth->fetch();

$latitude = $row['latitude'];
$longitude = $row['longitude'];
$height = $row['height'];
$gps_date = $row['gps_date'];
$gps_time = $row['gps_time'];



# Pressure, internal temp, external temp
$sql = "select * from measurements_t where id = (select max(id) from measurements_t)";

$sth = $dbh->prepare($sql);

$sth->execute();

$row = $sth->fetch();

$pressure = $row['pressure'];
$internal_temp = $row['internal_temp'];
$external_temp = $row['external_temp'];

?>
<h1>Latest Information</h1>
<h2>GPS Information</h2>
<table id="gps">
<tr>
  <th>Latitude</th>
  <td><?= $latitude?></td>
</tr>
<tr>
  <th>Longitude</th>
  <td><?= $longitude?></td>
</tr>
<tr>
  <th>Altitude</th>
  <td><?= $height?></td>
</tr>
<tr>
  <th>Date</th>
  <td><?= $gps_date?></td>
</tr>
<tr>
  <th>Time</th>
  <td><?= $gps_time?></td>
</tr>
</table>

<h2>Latest measurements</h2>
<table id="measurements">
<tr>
  <th>Air Pressure</th>
  <td><?= $pressure?></td>
</tr>
<tr>
  <th>Internal Temp</th>
  <td><?= $internal_temp?></td>
</tr>
<tr>
  <th>External Temp</th>
  <td><?= $external_temp?></td>
</tr>


</table>



</body>
</html>

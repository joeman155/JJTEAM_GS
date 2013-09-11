<?
include "config.inc";

$v_local_lat = $_REQUEST['local_lat'];
$v_local_long = $_REQUEST['local_long'];
$v_local_alt  = $_REQUEST['local_alt'];
$v_local_got_gps = $_REQUEST['local_got_gps'];
$v_local_timestamp = $_REQUEST['local_timestamp'];


# Get all the latest measurements
try {
     $dbh = new PDO("sqlite:" . $db_file);
    }
catch (PDOException $e)
    {
     echo $e->getMessage();
    }

# Get latest beaglebone voltage
$sql = "select * from bb_voltage_t where id = (select max(id) from bb_voltage_t)";

$sth = $dbh->prepare($sql);

$sth->execute();

$row = $sth->fetch();
$bb_voltage = $row['voltage'];
$bb_voltage_date = date("d-m-y H:i:s", strtotime($row['creation_date']));

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
$gps_creation_date = date("d-m-y H:i:s", strtotime($row['creation_date']));



# Pressure, internal temp, external temp
$sql = "select * from measurements_t where id = (select max(id) from measurements_t)";

$sth = $dbh->prepare($sql);

$sth->execute();

$row = $sth->fetch();

$measurement_date = date("d-m-y H:i:s", strtotime($row['creation_date']));
$voltage = $row['voltage'];
$pressure = $row['pressure'];
$internal_temp = $row['internal_temp'];
$external_temp = $row['external_temp'];

?>
<script>
        $("#cutdown").click(function() {
        alert("About to request cutdown");
        $.ajax({
                url: "cutdown.php",
                success: function(s,x) {
                        $("#stats").html(s);
                }
            });
        });
</script>
<h2>HAB GPS Information (<?= $gps_creation_date?>)</h2>
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

<h2>Local GPS Information (<?= $v_local_timestamp?>)</h2>
<table id="local_gps">
<tr>
  <th>Latitude</th>
  <td><?= $v_local_lat?></td>
</tr>
<tr>
  <th>Longitude</th>
  <td><?= $v_local_long?></td>
</tr>
<tr>
  <th>Altitude</th>
  <td><?= round($v_local_alt,0)?></td>
</tr>
</table>



<br/>
<h2>Latest Measurements (<?= $measurement_date?>)</h2>
<table id="measurements">
<tr>
  <th>PSU Voltage</th>
  <td><?= $voltage?></td>
</tr>
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

<br/>
<h2>Beaglebone Voltage (<?= $bb_voltage_date?>)</h2>
<table id="bb_measurements">
<tr>
  <th>Beaglebone Voltage</th>
  <td><?= round($bb_voltage,2)?></td>
</tr>
</table>

<h2>Cutdown</h2>
<?
if (file_exists($cutdown_init_file)) {
  $cutdown_msg = "Cutdown initiated";
} else if (file_exists($cutdown_req_file)) {
  $cutdown_msg = "Cutdown requested";
} else {
  $cutdown_msg = "";
}

if ($cutdown_msg != "") {
?>
	<b>Cutdown Status</b>: <?= $cutdown_msg ?>
<?
} else {
?>
<input id="cutdown" type="button" value="Initiate Cutdown"/>
<?
}
?>





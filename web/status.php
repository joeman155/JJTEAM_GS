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

# HAB GPS
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


# Calculate distance between LOCAL and HAB GPS 
if ($latitude != "" && $longitude != "" && $v_local_lat != "" && $v_local_long != "") {
  $v_horizontal_distance = calculateDistance($v_local_lat, $v_local_long, $latitude, $longitude, "K");
  $v_direction = calculateDirection($v_local_lat, $v_local_long, $latitude, $longitude);
  $v_los_distance = ($v_horizontal_distance ^ 2 + ($height/1000 - $v_local_alt/1000)^2)^0.5;
  $v_direction = round($v_direction);
  $v_los_distance = round($v_los_distance);
} else {
  $v_horizontal_distance = "Not enough info to calculate.";
  $v_direction = $v_horizontal_distance;
  $v_los_distance = $v_horizontal_distance;
}


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

<h2>Relational calculated values</h2>
<table id="relational">
<tr>
  <th>Distance (Great circle)</th>
  <td><?= $v_horizontal_distance?></td>
</tr>
<tr>
  <th>Approx Distance (LOS)</th>
  <td><?= $v_los_distance?></td>
</tr>
<tr>
  <th>Direction</th>
  <td><?= $v_direction?></td>
</tr>
<tr>
  <th>Speed</th>
  <td><?= $v_horizontal_speed?></td>
</tr>
<tr>
  <th>Direction in which HAB is travelling</th>
  <td><?= $v_bearing?></td>
</tr>
<tr>
  <th>Distance a long ground</th>
  <td><?= $v_vertical_speed?></td>
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




<?
function calculateDistance($lat1, $lon1, $lat2, $lon2, $unit) {
  $theta = $lon1 - $lon2;
  $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
  $dist = acos($dist);
  $dist = rad2deg($dist);
  $miles = $dist * 60 * 1.1515;
  $unit = strtoupper($unit);

  if ($unit == "K") {
    return ($miles * 1.609344);
  } else if ($unit == "N") {
      return ($miles * 0.8684);
    } else {
        return $miles;
      }
}

function _deg2rad_multi() {
    // Grab all the arguments as an array & apply deg2rad to each element
    $arguments = func_get_args();
    return array_map('deg2rad', $arguments);
}



function calculateDirection($p_lat1, $p_lon1, $p_lat2, $p_lon2) {
    // Convert our degrees to radians:
    list($lat1, $lon1, $lat2, $lon2) =
        _deg2rad_multi($p_lat1, $p_lon1, $p_lat2, $p_lon2);

    // Run the formula and store the answer (in radians)
    $rads = atan2(
            sin($lon2 - $lon1) * cos($lat2),
            (cos($lat1) * sin($lat2)) -
                  (sin($lat1) * cos($lat2) * cos($lon2 - $lon1)) );

    // Convert this back to degrees to use with a compass
    $degrees = rad2deg($rads);

    // If negative subtract it from 360 to get the bearing we are used to.
    $degrees = ($degrees < 0) ? 360 + $degrees : $degrees;

    return $degrees;
}




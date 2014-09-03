<?
include "config.inc";

# Get all the latest measurements
 try {
      $dbh = new PDO("sqlite:" . $db_file);
     }
 catch (PDOException $e)
     {
      echo $e->getMessage();
     }

   # GPS
   $now = date("Y-m-d");
$now = "2014-09-01";
   $sql = "select * from gps_t where creation_date >= '" . $now . "'";

   $sth = $dbh->prepare($sql);

   $sth->execute();

   # $row = $sth->fetch();

   $results = array();
   while ($row = $sth->fetch(PDO::FETCH_ASSOC)) {
      $latitude = $row['latitude'];
      $longitude = $row['longitude'];
      $height = $row['height'];
      $gps_date = $row['gps_date'];
      $gps_time = $row['gps_time'];
      // $gps_creation_date = date("d-M-Y H:i:s", $row['creation_date']);
      $gps_creation_date = date("H:i:s", $row['creation_date']);


      $v['latitude'] = $latitude;
      $v['longitude'] = $longitude;
      $v['height'] = $height;
      $v['gps_date'] = $gps_date;
      $v['gps_time'] = $gps_time;
      $v['gps_creation_date'] = $gps_creation_date;

      array_push($results, $v);

   }
$json = json_encode($results);
print $json;

$dbh = null;


?>

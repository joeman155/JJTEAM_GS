var v_local_lat;
var v_local_long;
var v_local_alt;
var v_got_gps=0;
var v_local_timestamp;

function gps_success_callback(p)
{
 v_local_lat=p.coords.latitude.toFixed(4);
 v_local_long=p.coords.longitude.toFixed(4);
 v_local_alt=p.coords.altitude;
 v_local_timestamp=p.coords.timestamp;
 v_got_gps=1;
 v_local_timestamp = new Date();
 v_local_timestamp.format("dd/mm/yy h:mm:ss");

 // alert('lat='+v_local_lat+';lon='+v_local_long+';alt='+v_local_alt);
}

function gps_error_callback(p)
{
 v_got_gps=0;

 switch (p.code)
   {
    case p.PERMISSION_DENIED:
      $("#gps_error").html("User denied the request for Geolocation.");
      break;
    case p.POSITION_UNAVAILABLE:
      $("#gps_error").html("Location information is unavailable.");
      break;
    case p.TIMEOUT:
      $("#gps_error").html("The request to get user location timed out.");
      break;
    case p.UNKNOWN_ERROR:
      $("#gps_error").html("An unknown error occurred.");
      break;
   }
}
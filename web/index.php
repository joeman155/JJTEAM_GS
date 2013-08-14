<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Hope Client Web Portal</title>
	<link rel="stylesheet" href="images.css">
        <link rel="stylesheet" href="jq/themes/ui-lightness/jquery-ui.css">


  <script src="jq/jquery-1.9.1.js"></script>
  <script src="jq/ui/jquery.ui.core.js"></script>
  <script src="jq/ui/jquery.ui.widget.js"></script>
  <script src="jq/ui/jquery.ui.mouse.js"></script>
  <script src="jq/ui/jquery.ui.button.js"></script>
  <script src="jq/ui/jquery.ui.position.js"></script>
  <script src="jq/ui/jquery.ui.effect.js"></script>
  <script src="jq/ui/jquery.ui.effect-slide.js"></script>
  <script src="jq/ui/jquery.ui.tabs.js"></script>

      <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
      <meta charset="utf-8">
          <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>

	<style>
		#messages {
		padding-left: 0px;
		margin: 0px;
		font-size: 12px;
		}
		#messages ul {
		list-style-type: none;
		width: 100%;
		padding-left: 0px;
		margin: 0px;
		}

		#messages li {
		list-style-type: none;
		width: 98%;
		padding-left: 4px;
		padding-top: 0px;
		padding-bottom: 6px;
		background: #ccc;
		border: 1px solid green;
		float: left;
		}

		.container {
		width: 400px;
		height: 400px;
		border-style: solid;
		border-width: 1px;
		border-color: grey;
		margin: 0px;
		padding: 0px;
		}
		#header {
		width: 300px;
		height: 30px;
		background-color: yellow;
		margin: 0px;
		padding: 0px;
		text-align: center;
		}
		#header p {
		padding: 3px;
		font-weight: bold;
		}
                html, body, #map-canvas {
                margin: 0;
                padding: 0;
                height: 100%;
                }
	</style>
	<script>
	$(function() {
		$( "#tabs" ).tabs( {
			activate: function(e,ui) {
			var active = $("#tabs").tabs("option", "active");
				if (active == 2) {
					$("#map-canvas").height(600);
					initialize();
				} else {
					$("#map-canvas").height(0);

				}
			}
		});

		$ ("#addrow").click(function () {
		slideDown();
		return false;
		});

		var last_id;
		var processing = 0;

		function getMessages() 
		{
		// Poll Server
		$.ajax({
			url: '/getMessage.php',
			data: { id: last_id },
			type: "GET",
			dataType: "json",
			async: false,
			cache: false,
			success: function(data) {
				$.each(data, function(index,element) {
				// Foreach message...add it to the browser page.
				last_id = element.id;
				addMessage("<li>" + element.id + " (" + element.creation_date + ") - " + element.message + "</li>");
				});
				},
			failure: function() {
				alert('failure occured');
				}

			});
		}

	function addMessage(message)
	{
		$("#messages").prepend(message);
		$("#messages li:first").effect("slide", {direction: "down"}, "fast");
	}

	function  load_datetime()
	{
	$.ajax({
	url: '/getdatetime.php',
	cache: false,
	async: false,
	success: function(s,x) {
	$("#datetime").html('<h2>' + s + '</h2>');
		}

	});
	}


	// Initial load
	load_datetime();

	setInterval(function(){
	        load_datetime();
	        }, 5000);


	setInterval(function(){
	if (processing == 0) {
		processing = 1;
		getMessages();
		}
	processing = 0;
	}, 1000);
	});


        var map;
        function initialize() {
        // Get latest GPS Status
	$.ajax({
		url: '/getLatestGPS.php',
		type: "GET",
		dataType: "json",
		async: false,
		cache: false,
		success: function(data) {
			v_lat=data.latitude;
			v_long=data.longitude;
			
			},
		failure: function() {
			alert('failure when getting latest gps data');
			}
		});

        var mapOptions = {
                zoom: 8,
                center: new google.maps.LatLng(v_lat, v_long),
                mapTypeId: google.maps.MapTypeId.ROADMAP
                };
        map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        }

	</script>
</head>
<body>


<div id="header" class="demo-description">
	<p>Hope web client - Messages</p>
</div>

<div id="datetime">
</div>

<div id="tabs">
	<ul>
		<li><a href="#messages">Messages</a></li>
		<li><a href="/status.html">Status</a></li>
		<li><a href="/map.php">Map</a></li>
		<li><a href="/images.php">Images</a></li>
	</ul>
	<div id="messages" class="container">
		<ul id="messages">
		</ul>
	</div>

	<div id="map-canvas" style="height: 600px;">
	</div>

	<div id="status">
	</div>

	<div id="images">
	</div>
</div>




</body>
</html>

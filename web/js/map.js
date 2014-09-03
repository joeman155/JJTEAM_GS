			// new OpenLayers.Control.Graticule(true,0.1,0.1,true,true,1,100,"coordinates",true,"dm",-1000,-100)
                //maxExtent: new OpenLayers.Bounds(-20037508.34, -20037508.34,
                //                                 20037508.34, 20037508.34),
    function initmap() {
           var options = {
                projection: new OpenLayers.Projection("EPSG:900913"),
                displayProjection: new OpenLayers.Projection("EPSG:4326"),
                units: "m",
                maxResolution: 156543.0339,
                maxExtent: new OpenLayers.Bounds(-20037508.34, -20037508.34,
                                                 20037508.34, 20037508.34),
                numZoomLevels: 20,
                controls: [
                        new OpenLayers.Control.Navigation(),
                        new OpenLayers.Control.PanZoomBar(),
                        new OpenLayers.Control.Permalink(),
                        new OpenLayers.Control.ScaleLine(),
                        new OpenLayers.Control.MousePosition(),
                        new OpenLayers.Control.KeyboardDefaults(),
			new OpenLayers.Control.Graticule({
				numPoints: 1,
				labelled: true,
				visible: true
                            })
 
                  ]
            };
        var fromProjection = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
        var toProjection   = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection
        var start_position       = new OpenLayers.LonLat(145.3,-17.3838).transform( fromProjection, toProjection);
        var zoom           = 10;


	// Balloon tracking icon
        var size = new OpenLayers.Size(21,25);
        var offset = new OpenLayers.Pixel(-(size.w/2), -size.h);
        var balloon_icon = new OpenLayers.Icon('/api/img/balloon.png', size, offset);
        var markers = new OpenLayers.Layer.Markers( "Markers" );

	// New Map
        map = new OpenLayers.Map("map-canvas",options);
        var newL = new OpenLayers.Layer.OSM("Default", "/osm_tiles/${z}/${x}/${y}.png", {numZoomLevels: 19});
	var vec = new OpenLayers.Layer.Vector("Overlay");


        // Get GPS co-ordinates for the current day.
	var balloon_gps;
	var points = [];
	var style = {strokeColor:"#0500bd", strokeWidth:30};
        $.ajax({
                url: 'get1DGPS.php',
                type: "GET",
                dataType: "json",
                async: false,
                cache: false,
                success: function(data) {
			$.each(data, function(index,element) {
                 		v_lat=element.latitude;
                	        v_long=element.longitude;
        			balloon_gps = new OpenLayers.LonLat(v_long,v_lat).transform( fromProjection, toProjection);
        			markers.addMarker(new OpenLayers.Marker(balloon_gps, balloon_icon.clone()));
				points.push( new OpenLayers.Geometry.Point(v_long,v_lat).transform( fromProjection, toProjection));
				});
                        },
                failure: function() {
                        alert('failure when getting latest gps data');
                        }
                });

	// Draw balloon path
	var line = new OpenLayers.Geometry.LineString(points);
	var fea = new OpenLayers.Feature.Vector(line);
	vec.addFeatures(fea);

	// Add Layers
        map.addLayer(newL);
        map.addLayer(markers);
        map.addLayer(vec);

	// Center map and zoom in
	map.setCenter(start_position, zoom);
        map.zoomIn();
 }

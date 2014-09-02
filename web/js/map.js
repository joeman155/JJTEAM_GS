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
                        new OpenLayers.Control.KeyboardDefaults()
 
                  ]
            };
        var fromProjection = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
        var toProjection   = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection
        var position       = new OpenLayers.LonLat(145.3,-17.3838).transform( fromProjection, toProjection);
        var zoom           = 10;

        var start_lon = 144.8000;
        var start_lat = -17.3232;
        var start_position       = new OpenLayers.LonLat(start_lon,start_lat).transform( fromProjection, toProjection);
        var start1_position       = new OpenLayers.LonLat(start_lon+0.1,start_lat+0.1).transform( fromProjection, toProjection);

        var size = new OpenLayers.Size(21,25);
        var offset = new OpenLayers.Pixel(-(size.w/2), -size.h);
        var balloon_icon = new OpenLayers.Icon('http://gs.jjteam.net/api/img/balloon.png', size, offset);


        var markers = new OpenLayers.Layer.Markers( "Markers" );

        map = new OpenLayers.Map("map-canvas",options);
        var newL = new OpenLayers.Layer.OSM("Default", "/osm_tiles/${z}/${x}/${y}.png", {numZoomLevels: 19});
        map.addLayer(newL);
        map.addLayer(markers);
        markers.addMarker(new OpenLayers.Marker(start_position, balloon_icon));
        markers.addMarker(new OpenLayers.Marker(start1_position, balloon_icon.clone()));
	map.setCenter(position, zoom);
        map.zoomIn();
 }

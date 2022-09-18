import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_markers/utils/bus_stops_utils.dart';

class BusStops extends StatelessWidget {
  // Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = getMarkersSet();
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: markers.first.position,
          zoom: 15,
        ),
        markers: markers,
      ),
    );
  }
}

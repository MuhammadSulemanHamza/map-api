import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_markers/constants.dart';

List<LatLng> extractLatLngs() {
  List<LatLng> latLngs = [];

  var res = kResponse;
  if (res.isNotEmpty) {
    do {
      if (res["latitude"] != null && res["longitude"] != null) {
        latLngs
            .add(LatLng(res["latitude"] as double, res["longitude"] as double));
      }
      // print(res);
      // print("\n");
      res = res["locationparent_ID"] as Map<String, Object?>;
    } while (res["locationparent_ID"] != null);
  }

  print(latLngs);
  return latLngs;
}

Set<Marker> getMarkersSet() {
  Set<Marker> markers = {};
  List<LatLng> latLngs = extractLatLngs();
  for (var position in latLngs) {
    markers.add(
      Marker(
        markerId: MarkerId(position.toString()),
        position: position,
      ),
    );
  }
  return markers;
}

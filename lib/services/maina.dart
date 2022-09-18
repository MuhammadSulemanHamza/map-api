// import 'package:capture_tree/src/view_models/LeaderboardsViewModel.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:provider/provider.dart';

// class MapView extends StatelessWidget {
//   static const routeName = "/mapView";
//   const MapView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     LeaderboardsViewModel leaderboardsViewModel =
//         Provider.of(context, listen: false);
//     leaderboardsViewModel.getLocationOfTrees();
//     return Scaffold(
//       body: Consumer<LeaderboardsViewModel>(
//         builder: (context, lvm, child) {
//           // lvm.getLocationOfTrees();
//           print("**");
//           // print(lvm.markers.length);

//           return Container(
//               child: lvm.isDataFetch == false
//                   ? Center(
//                       child: CircularProgressIndicator(),
//                     )
//                   : GoogleMap(
//                       markers: lvm.markers,
//                       initialCameraPosition: CameraPosition(
//                         zoom: 15,
//                         target: LatLng(lvm.myDrives1[0].latitude!,
//                             lvm.myDrives1[0].longitude!),
//                       ),
//                     ));
//         },
//       ),
//     );
//   }
// }

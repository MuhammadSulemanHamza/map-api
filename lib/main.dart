import 'package:flutter/material.dart';
import 'package:map_markers/bus_stops.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BusStops(),
    );
  }
}

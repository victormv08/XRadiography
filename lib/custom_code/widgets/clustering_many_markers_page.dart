// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart' as tmp;

class ClusteringManyMarkersPage extends StatefulWidget {
  static const String route = 'clusteringManyMarkersPage';

  const ClusteringManyMarkersPage({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  @override
  State<ClusteringManyMarkersPage> createState() =>
      _ClusteringManyMarkersPageState();
}

class _ClusteringManyMarkersPageState extends State<ClusteringManyMarkersPage> {
  tmp.LatLng? _clickedPosition;
  static const totalMarkers = 2000.0;
  final minLatLng = const tmp.LatLng(49.8566, 1.3522);
  final maxLatLng = const tmp.LatLng(58.3498, -10.2603);

  late List<Marker> markers;

  @override
  void initState() {
    final latitudeRange = maxLatLng.latitude - minLatLng.latitude;
    final longitudeRange = maxLatLng.longitude - minLatLng.longitude;

    final stepsInEachDirection = sqrt(totalMarkers).floor();
    final latStep = latitudeRange / stepsInEachDirection;
    final lonStep = longitudeRange / stepsInEachDirection;

    markers = [];
    for (var i = 0; i < stepsInEachDirection; i++) {
      for (var j = 0; j < stepsInEachDirection; j++) {
        final latLng = tmp.LatLng(
          minLatLng.latitude + i * latStep,
          minLatLng.longitude + j * lonStep,
        );

        markers.add(
          Marker(
            height: 30,
            width: 30,
            point: latLng,
            child: const Icon(Icons.pin_drop),
          ),
        );
      }
    }

    super.initState();
  }

  void _handleTap(TapPosition position, tmp.LatLng latlng) {
    setState(() {
      _clickedPosition = latlng;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:
            Text("Clicked position: ${latlng.latitude}, ${latlng.longitude}"),
        duration: Duration(seconds: 2),
      ),
    );
    print("Clicked position: ${latlng.latitude}, ${latlng.longitude}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clustering Many Markers Page')),
      //drawer: buildDrawer(context, ClusteringManyMarkersPage.route),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: tmp.LatLng(
              (maxLatLng.latitude + minLatLng.latitude) / 2,
              (maxLatLng.longitude + minLatLng.longitude) / 2),
          initialZoom: 6,
          maxZoom: 15,
          onTap: _handleTap,
        ),
        children: <Widget>[
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),
          MarkerClusterLayerWidget(
            options: MarkerClusterLayerOptions(
              maxClusterRadius: 45,
              size: const Size(40, 40),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(50),
              maxZoom: 15,
              markers: markers,
              builder: (context, markers) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Center(
                    child: Text(
                      markers.length.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

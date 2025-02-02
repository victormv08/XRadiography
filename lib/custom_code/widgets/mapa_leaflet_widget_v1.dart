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

//import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart' as tmp;

class MapaLeafletWidgetV1 extends StatefulWidget {
  static const String route = 'clusteringManyMarkersPage';

  const MapaLeafletWidgetV1({
    //Key? key,
    this.width,
    this.height,
    required this.posInicial,
    this.marcadores,
  }); //: super(key: key);

  final double? width;
  final double? height;
  final LatLng posInicial;
  final List<LatLng>? marcadores;

  @override
  State<MapaLeafletWidgetV1> createState() => _MapaWidgetState();
}

class _MapaWidgetState extends State<MapaLeafletWidgetV1> {
  tmp.LatLng? _clickedPosition;
  late List<Marker> markers;
  //---------------------------------------------
  @override
  void dispose() {
    super.dispose();
  }

  //---------------------------------------------
  @override
  void initState() {
    super.initState();
    markers = [];
  }

  //---------------------------------------------
  void _handleTap(TapPosition position, tmp.LatLng latlng) {
    setState(() {
      _clickedPosition = latlng;
      //markers.add(Marker(
      //  width: 80.0,
      // height: 80.0,
      //  point: latlng,
      //  builder: (ctx) => Container(
      //    child: Icon(
      //      Icons.location_pin,
      //      color: Colors.red,
      //    ),
      //  ),
      //));
    });
    //---------------------------------------------
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            "Coordenada Seleccionada: ${latlng.latitude}, ${latlng.longitude}"),
        duration: Duration(seconds: 2),
      ),
    );
    print("Coordenada Seleccionada: ${latlng.latitude}, ${latlng.longitude}");
  }

  //---------------------------------------------
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    return GestureDetector(
      //onTap: () =>
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Mapa',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FlutterMap(
                  options: MapOptions(
                    initialCenter: tmp.LatLng(widget.posInicial.latitude,
                        widget.posInicial.longitude),
                    //    (maxLatLng.latitude + minLatLng.latitude) / 2,
                    //    (maxLatLng.longitude + minLatLng.longitude) / 2),
                    initialZoom: 6,
                    maxZoom: 15,
                    onTap: _handleTap,
                  ),
                  children: <Widget>[
                    TileLayer(
                      urlTemplate:
                          'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: const ['a', 'b', 'c'],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

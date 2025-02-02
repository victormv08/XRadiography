// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<LatlngContenedorStruct>> mapContenedor(
    List<dynamic> contenedores) async {
  // Necesito retornar una lista de latlng  para el widget googlemaps
  List<LatlngContenedorStruct> latLngList = [];
  try {
    for (var contenedor in contenedores) {
      double lat = contenedor['latitude'];
      double lng = contenedor['longitude'];
      LatLng latLng = LatLng(lat, lng);
      latLngList.add(new LatlngContenedorStruct(
          coordenada: latLng, codigo: contenedor['tittle']));
    }
    print(latLngList);
  } catch (e) {
    print("Error:");
    print(e);
  }
// Aquí iría el código para obtener la lista de latlng, por ejemplo, desde una base de datos o una API

  return latLngList;
}

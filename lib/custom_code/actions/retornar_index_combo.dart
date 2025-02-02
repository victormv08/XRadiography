// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> retornarIndexCombo(
  List<dynamic>? parListaBusqueda,
  String? parBusqueda,
  String? parCampo,
) async {
  int res = -1;
  try {
    print("Entra......");
    //List<dynami<c> _parListaBusqueda = parListaBusqueda["empresas"];
    //print(_parListaBusqueda);
    if (parListaBusqueda == null || parBusqueda == null || parCampo == null) {
      // Manejar el caso cuando alguno de los parámetros es nulo
      return -1; // Otra valor que indique que los parámetros son inválidos
    }

    for (int i = 0; i < parListaBusqueda.length; i++) {
      dynamic item = parListaBusqueda[i];
      if (item[parCampo] == parBusqueda) {
        res = i;
        break;
      }
    }
  } catch (error) {
    print("Error...............");
    print(error);
  }
  // Si no se encontró ninguna coincidencia, retornar -1 o algún otro valor que indique que no se encontró
  print("Salida:$res");
  return res;
}

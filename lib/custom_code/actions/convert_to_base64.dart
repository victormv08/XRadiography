// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';

Future<String> convertToBase64(FFUploadedFile? imagePath) async {
  if (imagePath == null) {
    return '';
  }
  String jsonString = imagePath.serialize();
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  List<dynamic> bytesList = jsonMap['bytes'];
  List<int> byteArray = List<int>.from(bytesList);
  return base64Encode(byteArray);
}

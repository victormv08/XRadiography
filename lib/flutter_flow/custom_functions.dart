import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? funBase64ToImage(String? parFotosEncoding) {
  /*if (parFotosEncoding == null) return null;
  final bytes = base64.decode(parFotosEncoding);
  return FFUploadedFile(
    bytes: bytes.buffer.asUint8List(),
    name: 'image.jpg',
  );*/
  return "";
}

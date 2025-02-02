import '/flutter_flow/flutter_flow_util.dart';
import 'cargar_radiografia_widget.dart' show CargarRadiografiaWidget;
import 'package:flutter/material.dart';

class CargarRadiografiaModel extends FlutterFlowModel<CargarRadiografiaWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

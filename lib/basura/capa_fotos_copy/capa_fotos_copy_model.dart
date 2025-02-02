import '/flutter_flow/flutter_flow_util.dart';
import 'capa_fotos_copy_widget.dart' show CapaFotosCopyWidget;
import 'package:flutter/material.dart';

class CapaFotosCopyModel extends FlutterFlowModel<CapaFotosCopyWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? varLocalFoto;

  String? varLocalFotoBase64;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  // Stores action output result for [Custom Action - convertSignatureToBase64] action in IconButton widget.
  String? firma;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();
  }
}

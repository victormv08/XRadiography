import '/flutter_flow/flutter_flow_util.dart';
import 'solo_widget.dart' show SoloWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class SoloModel extends FlutterFlowModel<SoloWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Caliche widget.
  SignatureController? calicheController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    calicheController?.dispose();
  }
}

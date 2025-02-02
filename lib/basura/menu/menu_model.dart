import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (callMapa)] action in Button widget.
  ApiCallResponse? contenedores;
  // Stores action output result for [Custom Action - mapContenedor] action in Button widget.
  List<LatlngContenedorStruct>? latlngContenedores;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'capa_fotos_widget.dart' show CapaFotosWidget;
import 'package:flutter/material.dart';

class CapaFotosModel extends FlutterFlowModel<CapaFotosWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? varLocalFoto;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (CallEmpresa)] action in capa_fotos widget.
  ApiCallResponse? retorno;
  // Stores action output result for [Custom Action - getLatLong] action in capa_fotos widget.
  CoordenadaStruct? coordenada;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - convertToBase64] action in IconButton widget.
  String? fotoConvertida;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}

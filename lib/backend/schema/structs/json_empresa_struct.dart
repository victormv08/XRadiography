// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonEmpresaStruct extends BaseStruct {
  JsonEmpresaStruct({
    String? status,
    List<EmpresaStruct>? empresas,
  })  : _status = status,
        _empresas = empresas;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "empresas" field.
  List<EmpresaStruct>? _empresas;
  List<EmpresaStruct> get empresas => _empresas ?? const [];
  set empresas(List<EmpresaStruct>? val) => _empresas = val;

  void updateEmpresas(Function(List<EmpresaStruct>) updateFn) {
    updateFn(_empresas ??= []);
  }

  bool hasEmpresas() => _empresas != null;

  static JsonEmpresaStruct fromMap(Map<String, dynamic> data) =>
      JsonEmpresaStruct(
        status: data['status'] as String?,
        empresas: getStructList(
          data['empresas'],
          EmpresaStruct.fromMap,
        ),
      );

  static JsonEmpresaStruct? maybeFromMap(dynamic data) => data is Map
      ? JsonEmpresaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'empresas': _empresas?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'empresas': serializeParam(
          _empresas,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static JsonEmpresaStruct fromSerializableMap(Map<String, dynamic> data) =>
      JsonEmpresaStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        empresas: deserializeStructParam<EmpresaStruct>(
          data['empresas'],
          ParamType.DataStruct,
          true,
          structBuilder: EmpresaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'JsonEmpresaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is JsonEmpresaStruct &&
        status == other.status &&
        listEquality.equals(empresas, other.empresas);
  }

  @override
  int get hashCode => const ListEquality().hash([status, empresas]);
}

JsonEmpresaStruct createJsonEmpresaStruct({
  String? status,
}) =>
    JsonEmpresaStruct(
      status: status,
    );

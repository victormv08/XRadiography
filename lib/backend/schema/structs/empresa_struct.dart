// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaStruct extends BaseStruct {
  EmpresaStruct({
    String? emtNit,
    String? emtNombre,
    String? emtEmail,
  })  : _emtNit = emtNit,
        _emtNombre = emtNombre,
        _emtEmail = emtEmail;

  // "emt_nit" field.
  String? _emtNit;
  String get emtNit => _emtNit ?? '';
  set emtNit(String? val) => _emtNit = val;

  bool hasEmtNit() => _emtNit != null;

  // "emt_nombre" field.
  String? _emtNombre;
  String get emtNombre => _emtNombre ?? '';
  set emtNombre(String? val) => _emtNombre = val;

  bool hasEmtNombre() => _emtNombre != null;

  // "emt_email" field.
  String? _emtEmail;
  String get emtEmail => _emtEmail ?? '';
  set emtEmail(String? val) => _emtEmail = val;

  bool hasEmtEmail() => _emtEmail != null;

  static EmpresaStruct fromMap(Map<String, dynamic> data) => EmpresaStruct(
        emtNit: data['emt_nit'] as String?,
        emtNombre: data['emt_nombre'] as String?,
        emtEmail: data['emt_email'] as String?,
      );

  static EmpresaStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmpresaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'emt_nit': _emtNit,
        'emt_nombre': _emtNombre,
        'emt_email': _emtEmail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'emt_nit': serializeParam(
          _emtNit,
          ParamType.String,
        ),
        'emt_nombre': serializeParam(
          _emtNombre,
          ParamType.String,
        ),
        'emt_email': serializeParam(
          _emtEmail,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmpresaStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmpresaStruct(
        emtNit: deserializeParam(
          data['emt_nit'],
          ParamType.String,
          false,
        ),
        emtNombre: deserializeParam(
          data['emt_nombre'],
          ParamType.String,
          false,
        ),
        emtEmail: deserializeParam(
          data['emt_email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmpresaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmpresaStruct &&
        emtNit == other.emtNit &&
        emtNombre == other.emtNombre &&
        emtEmail == other.emtEmail;
  }

  @override
  int get hashCode => const ListEquality().hash([emtNit, emtNombre, emtEmail]);
}

EmpresaStruct createEmpresaStruct({
  String? emtNit,
  String? emtNombre,
  String? emtEmail,
}) =>
    EmpresaStruct(
      emtNit: emtNit,
      emtNombre: emtNombre,
      emtEmail: emtEmail,
    );

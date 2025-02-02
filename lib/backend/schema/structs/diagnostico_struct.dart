// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiagnosticoStruct extends BaseStruct {
  DiagnosticoStruct({
    String? usuNombre,
    String? usuId,
    String? usuDiagnostico,
    String? fechaDiagnostico,
    String? diagEstado,
  })  : _usuNombre = usuNombre,
        _usuId = usuId,
        _usuDiagnostico = usuDiagnostico,
        _fechaDiagnostico = fechaDiagnostico,
        _diagEstado = diagEstado;

  // "usu_nombre" field.
  String? _usuNombre;
  String get usuNombre => _usuNombre ?? '';
  set usuNombre(String? val) => _usuNombre = val;

  bool hasUsuNombre() => _usuNombre != null;

  // "usu_id" field.
  String? _usuId;
  String get usuId => _usuId ?? '';
  set usuId(String? val) => _usuId = val;

  bool hasUsuId() => _usuId != null;

  // "usu_diagnostico" field.
  String? _usuDiagnostico;
  String get usuDiagnostico => _usuDiagnostico ?? '';
  set usuDiagnostico(String? val) => _usuDiagnostico = val;

  bool hasUsuDiagnostico() => _usuDiagnostico != null;

  // "fecha_diagnostico" field.
  String? _fechaDiagnostico;
  String get fechaDiagnostico => _fechaDiagnostico ?? '';
  set fechaDiagnostico(String? val) => _fechaDiagnostico = val;

  bool hasFechaDiagnostico() => _fechaDiagnostico != null;

  // "diag_estado" field.
  String? _diagEstado;
  String get diagEstado => _diagEstado ?? '';
  set diagEstado(String? val) => _diagEstado = val;

  bool hasDiagEstado() => _diagEstado != null;

  static DiagnosticoStruct fromMap(Map<String, dynamic> data) =>
      DiagnosticoStruct(
        usuNombre: data['usu_nombre'] as String?,
        usuId: data['usu_id'] as String?,
        usuDiagnostico: data['usu_diagnostico'] as String?,
        fechaDiagnostico: data['fecha_diagnostico'] as String?,
        diagEstado: data['diag_estado'] as String?,
      );

  static DiagnosticoStruct? maybeFromMap(dynamic data) => data is Map
      ? DiagnosticoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'usu_nombre': _usuNombre,
        'usu_id': _usuId,
        'usu_diagnostico': _usuDiagnostico,
        'fecha_diagnostico': _fechaDiagnostico,
        'diag_estado': _diagEstado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usu_nombre': serializeParam(
          _usuNombre,
          ParamType.String,
        ),
        'usu_id': serializeParam(
          _usuId,
          ParamType.String,
        ),
        'usu_diagnostico': serializeParam(
          _usuDiagnostico,
          ParamType.String,
        ),
        'fecha_diagnostico': serializeParam(
          _fechaDiagnostico,
          ParamType.String,
        ),
        'diag_estado': serializeParam(
          _diagEstado,
          ParamType.String,
        ),
      }.withoutNulls;

  static DiagnosticoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiagnosticoStruct(
        usuNombre: deserializeParam(
          data['usu_nombre'],
          ParamType.String,
          false,
        ),
        usuId: deserializeParam(
          data['usu_id'],
          ParamType.String,
          false,
        ),
        usuDiagnostico: deserializeParam(
          data['usu_diagnostico'],
          ParamType.String,
          false,
        ),
        fechaDiagnostico: deserializeParam(
          data['fecha_diagnostico'],
          ParamType.String,
          false,
        ),
        diagEstado: deserializeParam(
          data['diag_estado'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DiagnosticoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiagnosticoStruct &&
        usuNombre == other.usuNombre &&
        usuId == other.usuId &&
        usuDiagnostico == other.usuDiagnostico &&
        fechaDiagnostico == other.fechaDiagnostico &&
        diagEstado == other.diagEstado;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([usuNombre, usuId, usuDiagnostico, fechaDiagnostico, diagEstado]);
}

DiagnosticoStruct createDiagnosticoStruct({
  String? usuNombre,
  String? usuId,
  String? usuDiagnostico,
  String? fechaDiagnostico,
  String? diagEstado,
}) =>
    DiagnosticoStruct(
      usuNombre: usuNombre,
      usuId: usuId,
      usuDiagnostico: usuDiagnostico,
      fechaDiagnostico: fechaDiagnostico,
      diagEstado: diagEstado,
    );

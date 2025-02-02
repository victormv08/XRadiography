// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasStruct extends BaseStruct {
  CitasStruct({
    String? usuId,
    String? fechaCita,
    String? proposito,
  })  : _usuId = usuId,
        _fechaCita = fechaCita,
        _proposito = proposito;

  // "usu_id" field.
  String? _usuId;
  String get usuId => _usuId ?? '';
  set usuId(String? val) => _usuId = val;

  bool hasUsuId() => _usuId != null;

  // "fecha_cita" field.
  String? _fechaCita;
  String get fechaCita => _fechaCita ?? '';
  set fechaCita(String? val) => _fechaCita = val;

  bool hasFechaCita() => _fechaCita != null;

  // "proposito" field.
  String? _proposito;
  String get proposito => _proposito ?? '';
  set proposito(String? val) => _proposito = val;

  bool hasProposito() => _proposito != null;

  static CitasStruct fromMap(Map<String, dynamic> data) => CitasStruct(
        usuId: data['usu_id'] as String?,
        fechaCita: data['fecha_cita'] as String?,
        proposito: data['proposito'] as String?,
      );

  static CitasStruct? maybeFromMap(dynamic data) =>
      data is Map ? CitasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'usu_id': _usuId,
        'fecha_cita': _fechaCita,
        'proposito': _proposito,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usu_id': serializeParam(
          _usuId,
          ParamType.String,
        ),
        'fecha_cita': serializeParam(
          _fechaCita,
          ParamType.String,
        ),
        'proposito': serializeParam(
          _proposito,
          ParamType.String,
        ),
      }.withoutNulls;

  static CitasStruct fromSerializableMap(Map<String, dynamic> data) =>
      CitasStruct(
        usuId: deserializeParam(
          data['usu_id'],
          ParamType.String,
          false,
        ),
        fechaCita: deserializeParam(
          data['fecha_cita'],
          ParamType.String,
          false,
        ),
        proposito: deserializeParam(
          data['proposito'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CitasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CitasStruct &&
        usuId == other.usuId &&
        fechaCita == other.fechaCita &&
        proposito == other.proposito;
  }

  @override
  int get hashCode => const ListEquality().hash([usuId, fechaCita, proposito]);
}

CitasStruct createCitasStruct({
  String? usuId,
  String? fechaCita,
  String? proposito,
}) =>
    CitasStruct(
      usuId: usuId,
      fechaCita: fechaCita,
      proposito: proposito,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LatlngContenedorStruct extends BaseStruct {
  LatlngContenedorStruct({
    String? codigo,
    LatLng? coordenada,
  })  : _codigo = codigo,
        _coordenada = coordenada;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "coordenada" field.
  LatLng? _coordenada;
  LatLng? get coordenada => _coordenada;
  set coordenada(LatLng? val) => _coordenada = val;

  bool hasCoordenada() => _coordenada != null;

  static LatlngContenedorStruct fromMap(Map<String, dynamic> data) =>
      LatlngContenedorStruct(
        codigo: data['codigo'] as String?,
        coordenada: data['coordenada'] as LatLng?,
      );

  static LatlngContenedorStruct? maybeFromMap(dynamic data) => data is Map
      ? LatlngContenedorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'codigo': _codigo,
        'coordenada': _coordenada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'coordenada': serializeParam(
          _coordenada,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static LatlngContenedorStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LatlngContenedorStruct(
        codigo: deserializeParam(
          data['codigo'],
          ParamType.String,
          false,
        ),
        coordenada: deserializeParam(
          data['coordenada'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'LatlngContenedorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LatlngContenedorStruct &&
        codigo == other.codigo &&
        coordenada == other.coordenada;
  }

  @override
  int get hashCode => const ListEquality().hash([codigo, coordenada]);
}

LatlngContenedorStruct createLatlngContenedorStruct({
  String? codigo,
  LatLng? coordenada,
}) =>
    LatlngContenedorStruct(
      codigo: codigo,
      coordenada: coordenada,
    );

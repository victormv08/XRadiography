// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CargarRadiografiaStruct extends BaseStruct {
  CargarRadiografiaStruct({
    String? nombre,
    String? identificacion,
    String? numeroCel,
    String? observaciones,
    String? foto,
  })  : _nombre = nombre,
        _identificacion = identificacion,
        _numeroCel = numeroCel,
        _observaciones = observaciones,
        _foto = foto;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "identificacion" field.
  String? _identificacion;
  String get identificacion => _identificacion ?? '';
  set identificacion(String? val) => _identificacion = val;

  bool hasIdentificacion() => _identificacion != null;

  // "numeroCel" field.
  String? _numeroCel;
  String get numeroCel => _numeroCel ?? '';
  set numeroCel(String? val) => _numeroCel = val;

  bool hasNumeroCel() => _numeroCel != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  set observaciones(String? val) => _observaciones = val;

  bool hasObservaciones() => _observaciones != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  static CargarRadiografiaStruct fromMap(Map<String, dynamic> data) =>
      CargarRadiografiaStruct(
        nombre: data['nombre'] as String?,
        identificacion: data['identificacion'] as String?,
        numeroCel: data['numeroCel'] as String?,
        observaciones: data['observaciones'] as String?,
        foto: data['foto'] as String?,
      );

  static CargarRadiografiaStruct? maybeFromMap(dynamic data) => data is Map
      ? CargarRadiografiaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'identificacion': _identificacion,
        'numeroCel': _numeroCel,
        'observaciones': _observaciones,
        'foto': _foto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'identificacion': serializeParam(
          _identificacion,
          ParamType.String,
        ),
        'numeroCel': serializeParam(
          _numeroCel,
          ParamType.String,
        ),
        'observaciones': serializeParam(
          _observaciones,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
      }.withoutNulls;

  static CargarRadiografiaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CargarRadiografiaStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        identificacion: deserializeParam(
          data['identificacion'],
          ParamType.String,
          false,
        ),
        numeroCel: deserializeParam(
          data['numeroCel'],
          ParamType.String,
          false,
        ),
        observaciones: deserializeParam(
          data['observaciones'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CargarRadiografiaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CargarRadiografiaStruct &&
        nombre == other.nombre &&
        identificacion == other.identificacion &&
        numeroCel == other.numeroCel &&
        observaciones == other.observaciones &&
        foto == other.foto;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nombre, identificacion, numeroCel, observaciones, foto]);
}

CargarRadiografiaStruct createCargarRadiografiaStruct({
  String? nombre,
  String? identificacion,
  String? numeroCel,
  String? observaciones,
  String? foto,
}) =>
    CargarRadiografiaStruct(
      nombre: nombre,
      identificacion: identificacion,
      numeroCel: numeroCel,
      observaciones: observaciones,
      foto: foto,
    );

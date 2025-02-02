// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotosStruct extends BaseStruct {
  FotosStruct({
    String? descripcion,
    String? foto,
    List<String>? carrusel,
  })  : _descripcion = descripcion,
        _foto = foto,
        _carrusel = carrusel;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "carrusel" field.
  List<String>? _carrusel;
  List<String> get carrusel => _carrusel ?? const [];
  set carrusel(List<String>? val) => _carrusel = val;

  void updateCarrusel(Function(List<String>) updateFn) {
    updateFn(_carrusel ??= []);
  }

  bool hasCarrusel() => _carrusel != null;

  static FotosStruct fromMap(Map<String, dynamic> data) => FotosStruct(
        descripcion: data['Descripcion'] as String?,
        foto: data['Foto'] as String?,
        carrusel: getDataList(data['carrusel']),
      );

  static FotosStruct? maybeFromMap(dynamic data) =>
      data is Map ? FotosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Descripcion': _descripcion,
        'Foto': _foto,
        'carrusel': _carrusel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'Foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'carrusel': serializeParam(
          _carrusel,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static FotosStruct fromSerializableMap(Map<String, dynamic> data) =>
      FotosStruct(
        descripcion: deserializeParam(
          data['Descripcion'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam(
          data['Foto'],
          ParamType.String,
          false,
        ),
        carrusel: deserializeParam<String>(
          data['carrusel'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'FotosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FotosStruct &&
        descripcion == other.descripcion &&
        foto == other.foto &&
        listEquality.equals(carrusel, other.carrusel);
  }

  @override
  int get hashCode => const ListEquality().hash([descripcion, foto, carrusel]);
}

FotosStruct createFotosStruct({
  String? descripcion,
  String? foto,
}) =>
    FotosStruct(
      descripcion: descripcion,
      foto: foto,
    );

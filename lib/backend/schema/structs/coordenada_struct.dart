// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoordenadaStruct extends BaseStruct {
  CoordenadaStruct({
    double? lat,
    double? long,
  })  : _lat = lat,
        _long = long;

  // "Lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "Long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;

  void incrementLong(double amount) => long = long + amount;

  bool hasLong() => _long != null;

  static CoordenadaStruct fromMap(Map<String, dynamic> data) =>
      CoordenadaStruct(
        lat: castToType<double>(data['Lat']),
        long: castToType<double>(data['Long']),
      );

  static CoordenadaStruct? maybeFromMap(dynamic data) => data is Map
      ? CoordenadaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Lat': _lat,
        'Long': _long,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'Long': serializeParam(
          _long,
          ParamType.double,
        ),
      }.withoutNulls;

  static CoordenadaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CoordenadaStruct(
        lat: deserializeParam(
          data['Lat'],
          ParamType.double,
          false,
        ),
        long: deserializeParam(
          data['Long'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CoordenadaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CoordenadaStruct && lat == other.lat && long == other.long;
  }

  @override
  int get hashCode => const ListEquality().hash([lat, long]);
}

CoordenadaStruct createCoordenadaStruct({
  double? lat,
  double? long,
}) =>
    CoordenadaStruct(
      lat: lat,
      long: long,
    );

// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonFotosStruct extends BaseStruct {
  JsonFotosStruct({
    int? sucess,
    List<FotosStruct>? fotos,
  })  : _sucess = sucess,
        _fotos = fotos;

  // "sucess" field.
  int? _sucess;
  int get sucess => _sucess ?? 0;
  set sucess(int? val) => _sucess = val;

  void incrementSucess(int amount) => sucess = sucess + amount;

  bool hasSucess() => _sucess != null;

  // "Fotos" field.
  List<FotosStruct>? _fotos;
  List<FotosStruct> get fotos => _fotos ?? const [];
  set fotos(List<FotosStruct>? val) => _fotos = val;

  void updateFotos(Function(List<FotosStruct>) updateFn) {
    updateFn(_fotos ??= []);
  }

  bool hasFotos() => _fotos != null;

  static JsonFotosStruct fromMap(Map<String, dynamic> data) => JsonFotosStruct(
        sucess: castToType<int>(data['sucess']),
        fotos: getStructList(
          data['Fotos'],
          FotosStruct.fromMap,
        ),
      );

  static JsonFotosStruct? maybeFromMap(dynamic data) => data is Map
      ? JsonFotosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sucess': _sucess,
        'Fotos': _fotos?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sucess': serializeParam(
          _sucess,
          ParamType.int,
        ),
        'Fotos': serializeParam(
          _fotos,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static JsonFotosStruct fromSerializableMap(Map<String, dynamic> data) =>
      JsonFotosStruct(
        sucess: deserializeParam(
          data['sucess'],
          ParamType.int,
          false,
        ),
        fotos: deserializeStructParam<FotosStruct>(
          data['Fotos'],
          ParamType.DataStruct,
          true,
          structBuilder: FotosStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'JsonFotosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is JsonFotosStruct &&
        sucess == other.sucess &&
        listEquality.equals(fotos, other.fotos);
  }

  @override
  int get hashCode => const ListEquality().hash([sucess, fotos]);
}

JsonFotosStruct createJsonFotosStruct({
  int? sucess,
}) =>
    JsonFotosStruct(
      sucess: sucess,
    );

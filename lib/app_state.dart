import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _politicasAceptadas =
          prefs.getBool('ff_politicasAceptadas') ?? _politicasAceptadas;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ListaFotos')) {
        try {
          final serializedData = prefs.getString('ff_ListaFotos') ?? '{}';
          _ListaFotos =
              JsonFotosStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _CargaRadioGrafia = prefs
              .getStringList('ff_CargaRadioGrafia')
              ?.map((x) {
                try {
                  return CargarRadiografiaStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _CargaRadioGrafia;
    });
    _safeInit(() {
      _login = prefs.getString('ff_login') ?? _login;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _politicasAceptadas = false;
  bool get politicasAceptadas => _politicasAceptadas;
  set politicasAceptadas(bool value) {
    _politicasAceptadas = value;
    prefs.setBool('ff_politicasAceptadas', value);
  }

  JsonFotosStruct _ListaFotos = JsonFotosStruct();
  JsonFotosStruct get ListaFotos => _ListaFotos;
  set ListaFotos(JsonFotosStruct value) {
    _ListaFotos = value;
    prefs.setString('ff_ListaFotos', value.serialize());
  }

  void updateListaFotosStruct(Function(JsonFotosStruct) updateFn) {
    updateFn(_ListaFotos);
    prefs.setString('ff_ListaFotos', _ListaFotos.serialize());
  }

  JsonEmpresaStruct _ListaEmpresa = JsonEmpresaStruct();
  JsonEmpresaStruct get ListaEmpresa => _ListaEmpresa;
  set ListaEmpresa(JsonEmpresaStruct value) {
    _ListaEmpresa = value;
  }

  void updateListaEmpresaStruct(Function(JsonEmpresaStruct) updateFn) {
    updateFn(_ListaEmpresa);
  }

  LatLng? _location = const LatLng(5.0629743, -75.5027698);
  LatLng? get location => _location;
  set location(LatLng? value) {
    _location = value;
  }

  List<LatlngContenedorStruct> _contenedores = [];
  List<LatlngContenedorStruct> get contenedores => _contenedores;
  set contenedores(List<LatlngContenedorStruct> value) {
    _contenedores = value;
  }

  void addToContenedores(LatlngContenedorStruct value) {
    contenedores.add(value);
  }

  void removeFromContenedores(LatlngContenedorStruct value) {
    contenedores.remove(value);
  }

  void removeAtIndexFromContenedores(int index) {
    contenedores.removeAt(index);
  }

  void updateContenedoresAtIndex(
    int index,
    LatlngContenedorStruct Function(LatlngContenedorStruct) updateFn,
  ) {
    contenedores[index] = updateFn(_contenedores[index]);
  }

  void insertAtIndexInContenedores(int index, LatlngContenedorStruct value) {
    contenedores.insert(index, value);
  }

  List<CargarRadiografiaStruct> _CargaRadioGrafia = [
    CargarRadiografiaStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"Jarol Ricardo Agudelo\",\"identificacion\":\"18720932134\",\"numeroCel\":\"3117463245\",\"observaciones\":\"Se notan diversos sintomas de tos y flema\",\"foto\":\"https://grupovivo.life/wp-content/uploads/2023/10/radiografia-torax-comprar-rayos-x.jpg\"}')),
    CargarRadiografiaStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"Maria Lucia Galeano\",\"identificacion\":\"12903438671\",\"numeroCel\":\"31178935467\",\"observaciones\":\"Todo marcha bien en ella\",\"foto\":\"https://assets1.farmaciasanpablo.com.mx/landings/_blog/consultorio/radiografia-de-torax-normal.jpg\"}')),
    CargarRadiografiaStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"Yonathan Lopez\",\"identificacion\":\"1002943765\",\"numeroCel\":\"3173621987\",\"observaciones\":\"Todo marcha bien en él\",\"foto\":\"https://clinicamagnasalud.es/wp-content/uploads/2024/09/radiografia-de-torax-frontal-valencia-1024x839.jpg\"}')),
    CargarRadiografiaStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"Jaime Yepes\",\"identificacion\":\"18673123421\",\"numeroCel\":\"320976512\",\"observaciones\":\"Tiene algunos sintomas de bronquitis\",\"foto\":\"https://midiagnostico.es/wp-content/uploads/2022/12/radiografia-torax-imagen.jpg\"}')),
    CargarRadiografiaStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"Carlos Gonzales\",\"identificacion\":\"10029413456\",\"numeroCel\":\"3216792019\",\"observaciones\":\"Tiene algunas complicaciones severas al momento de contraer el diafragma\",\"foto\":\"https://www.researchgate.net/publication/376869085/figure/fig2/AS:11431281214762733@1703770668105/Figura-5-Radiografia-de-torax-normal.png\"}'))
  ];
  List<CargarRadiografiaStruct> get CargaRadioGrafia => _CargaRadioGrafia;
  set CargaRadioGrafia(List<CargarRadiografiaStruct> value) {
    _CargaRadioGrafia = value;
    prefs.setStringList(
        'ff_CargaRadioGrafia', value.map((x) => x.serialize()).toList());
  }

  void addToCargaRadioGrafia(CargarRadiografiaStruct value) {
    CargaRadioGrafia.add(value);
    prefs.setStringList('ff_CargaRadioGrafia',
        _CargaRadioGrafia.map((x) => x.serialize()).toList());
  }

  void removeFromCargaRadioGrafia(CargarRadiografiaStruct value) {
    CargaRadioGrafia.remove(value);
    prefs.setStringList('ff_CargaRadioGrafia',
        _CargaRadioGrafia.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCargaRadioGrafia(int index) {
    CargaRadioGrafia.removeAt(index);
    prefs.setStringList('ff_CargaRadioGrafia',
        _CargaRadioGrafia.map((x) => x.serialize()).toList());
  }

  void updateCargaRadioGrafiaAtIndex(
    int index,
    CargarRadiografiaStruct Function(CargarRadiografiaStruct) updateFn,
  ) {
    CargaRadioGrafia[index] = updateFn(_CargaRadioGrafia[index]);
    prefs.setStringList('ff_CargaRadioGrafia',
        _CargaRadioGrafia.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCargaRadioGrafia(
      int index, CargarRadiografiaStruct value) {
    CargaRadioGrafia.insert(index, value);
    prefs.setStringList('ff_CargaRadioGrafia',
        _CargaRadioGrafia.map((x) => x.serialize()).toList());
  }

  List<DiagnosticoStruct> _ListaDiagnosticos = [
    DiagnosticoStruct.fromSerializableMap(jsonDecode(
        '{\"usu_nombre\":\"paciente\",\"usu_id\":\"paciente\",\"usu_diagnostico\":\"Diagnóstico: Infección del tracto urinario no complicada.\\n\\nJustificación: Paciente femenina de 25 años con disuria, urgencia y tenesmo vesical de tres días de evolución. Examen de orina con leucocituria y bacteriuria. No fiebre ni compromiso sistémico. Se indica tratamiento con nitrofurantoína 100 mg cada 12 horas por 5 días.\",\"fecha_diagnostico\":\"2024-10-05\",\"diag_estado\":\"Inactivo\"}')),
    DiagnosticoStruct.fromSerializableMap(jsonDecode(
        '{\"usu_nombre\":\"paciente\",\"usu_id\":\"paciente\",\"usu_diagnostico\":\"Diagnóstico: Diabetes mellitus tipo 2 descompensada con hiperglucemia.\\n\\nJustificación: Paciente masculino de 55 años con antecedente de diabetes, consulta por polidipsia, poliuria y fatiga. Glucemia capilar de 285 mg/dL y HbA1c de 9.2%. Se ajusta tratamiento con insulina basal y cambios en el plan nutricional.\",\"fecha_diagnostico\":\"2024-12-20\",\"diag_estado\":\"Inactivo\"}'))
  ];
  List<DiagnosticoStruct> get ListaDiagnosticos => _ListaDiagnosticos;
  set ListaDiagnosticos(List<DiagnosticoStruct> value) {
    _ListaDiagnosticos = value;
  }

  void addToListaDiagnosticos(DiagnosticoStruct value) {
    ListaDiagnosticos.add(value);
  }

  void removeFromListaDiagnosticos(DiagnosticoStruct value) {
    ListaDiagnosticos.remove(value);
  }

  void removeAtIndexFromListaDiagnosticos(int index) {
    ListaDiagnosticos.removeAt(index);
  }

  void updateListaDiagnosticosAtIndex(
    int index,
    DiagnosticoStruct Function(DiagnosticoStruct) updateFn,
  ) {
    ListaDiagnosticos[index] = updateFn(_ListaDiagnosticos[index]);
  }

  void insertAtIndexInListaDiagnosticos(int index, DiagnosticoStruct value) {
    ListaDiagnosticos.insert(index, value);
  }

  String _login = '';
  String get login => _login;
  set login(String value) {
    _login = value;
    prefs.setString('ff_login', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

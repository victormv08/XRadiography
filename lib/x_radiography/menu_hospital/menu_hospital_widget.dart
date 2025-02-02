import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'menu_hospital_model.dart';
export 'menu_hospital_model.dart';

class MenuHospitalWidget extends StatefulWidget {
  const MenuHospitalWidget({
    super.key,
    this.login,
  });

  final String? login;

  @override
  State<MenuHospitalWidget> createState() => _MenuHospitalWidgetState();
}

class _MenuHospitalWidgetState extends State<MenuHospitalWidget> {
  late MenuHospitalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuHospitalModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/hospital.jpg',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: Text(
                          'Bienvenido a nuestro sistema',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 0.0, 50.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 800.0,
                          decoration: const BoxDecoration(
                            color: Color(0xD8E0E3E7),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlipCard(
                                fill: Fill.fillBack,
                                direction: FlipDirection.HORIZONTAL,
                                speed: 400,
                                front: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (widget.login == 'medico')
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 5.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    height: 200.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0x00FFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          const Color(0xFF001398),
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 50.0,
                                                      fillColor: Colors.white,
                                                      icon: const Icon(
                                                        Icons.list,
                                                        color:
                                                            Color(0xFF001398),
                                                        size: 100.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'VerHistoriaClinica',
                                                          queryParameters: {
                                                            'identificacion':
                                                                serializeParam(
                                                              FFAppState()
                                                                  .CargaRadioGrafia
                                                                  .firstOrNull
                                                                  ?.identificacion,
                                                              ParamType.String,
                                                            ),
                                                            'nombre':
                                                                serializeParam(
                                                              FFAppState()
                                                                  .CargaRadioGrafia
                                                                  .firstOrNull
                                                                  ?.nombre,
                                                              ParamType.String,
                                                            ),
                                                            'celular':
                                                                serializeParam(
                                                              FFAppState()
                                                                  .CargaRadioGrafia
                                                                  .firstOrNull
                                                                  ?.numeroCel,
                                                              ParamType.String,
                                                            ),
                                                            'observacion':
                                                                serializeParam(
                                                              FFAppState()
                                                                  .CargaRadioGrafia
                                                                  .firstOrNull
                                                                  ?.observaciones,
                                                              ParamType.String,
                                                            ),
                                                            'foto':
                                                                serializeParam(
                                                              FFAppState()
                                                                  .CargaRadioGrafia
                                                                  .firstOrNull
                                                                  ?.foto,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              if (widget.login == 'medico')
                                                Text(
                                                  'Ver historia clínica',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (widget.login == 'paciente')
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 5.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    height: 200.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0x00FFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          const Color(0xFF001398),
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 50.0,
                                                      fillColor: Colors.white,
                                                      icon: const Icon(
                                                        Icons.list,
                                                        color:
                                                            Color(0xFF001398),
                                                        size: 100.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'HistorialDiagnostico',
                                                          queryParameters: {
                                                            'usuarioId':
                                                                serializeParam(
                                                              widget.login,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              if (widget.login == 'paciente')
                                                Text(
                                                  'Ver historial de diagnósticos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        if (widget.login == 'radiologo')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 5.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 200.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0x00FFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: FlutterFlowIconButton(
                                                borderColor: const Color(0xFF001398),
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor: Colors.white,
                                                icon: const Icon(
                                                  Icons.upload_rounded,
                                                  color: Color(0xFF001398),
                                                  size: 100.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed(
                                                      'CargarRadiografia');
                                                },
                                              ),
                                            ),
                                          ),
                                        if (widget.login == 'medico')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 5.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 200.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0x00FFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: FlutterFlowIconButton(
                                                borderColor: const Color(0xFF001398),
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor: Colors.white,
                                                icon: const FaIcon(
                                                  FontAwesomeIcons.check,
                                                  color: Color(0xFF001398),
                                                  size: 100.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'ConfirmarDiagnostico',
                                                    queryParameters: {
                                                      'usuarioId':
                                                          serializeParam(
                                                        widget.login,
                                                        ParamType.String,
                                                      ),
                                                      'usuarioNombre':
                                                          serializeParam(
                                                        '',
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        if (widget.login == 'paciente')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 5.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 200.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0x00FFFFFF),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: FlutterFlowIconButton(
                                                borderColor: const Color(0xFF001398),
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor: Colors.white,
                                                icon: const Icon(
                                                  Icons.calendar_month,
                                                  color: Color(0xFF001398),
                                                  size: 100.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'AgendarCita',
                                                    queryParameters: {
                                                      'usuarioId':
                                                          serializeParam(
                                                        widget.login,
                                                        ParamType.String,
                                                      ),
                                                      'usuarioNombre':
                                                          serializeParam(
                                                        '',
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        if (widget.login == 'radiologo')
                                          Text(
                                            'Cargar Radiografias',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        if (widget.login == 'medico')
                                          Text(
                                            'Confirmar diagnóstico',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        if (widget.login == 'paciente')
                                          Text(
                                            'Agendar Cita',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                                back: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              FlipCard(
                                fill: Fill.fillBack,
                                direction: FlipDirection.HORIZONTAL,
                                speed: 400,
                                front: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 5.0),
                                      child: Container(
                                        width: 200.0,
                                        height: 200.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0x00FFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor: const Color(0xFF001398),
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor: Colors.white,
                                          icon: const Icon(
                                            Icons.arrow_back,
                                            color: Color(0xFF001398),
                                            size: 100.0,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed('Login');
                                          },
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Salir',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 25.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                back: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Back',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

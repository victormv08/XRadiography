import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'solo_model.dart';
export 'solo_model.dart';

class SoloWidget extends StatefulWidget {
  const SoloWidget({super.key});

  @override
  State<SoloWidget> createState() => _SoloWidgetState();
}

class _SoloWidgetState extends State<SoloWidget> {
  late SoloModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SoloModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              ClipRect(
                child: Signature(
                  controller: _model.calicheController ??= SignatureController(
                    penStrokeWidth: 2.0,
                    penColor: FlutterFlowTheme.of(context).primaryText,
                    exportBackgroundColor: Colors.white,
                  ),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  height: 120.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

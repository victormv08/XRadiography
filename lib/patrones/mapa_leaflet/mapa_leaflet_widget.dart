import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'mapa_leaflet_model.dart';
export 'mapa_leaflet_model.dart';

class MapaLeafletWidget extends StatefulWidget {
  const MapaLeafletWidget({super.key});

  @override
  State<MapaLeafletWidget> createState() => _MapaLeafletWidgetState();
}

class _MapaLeafletWidgetState extends State<MapaLeafletWidget> {
  late MapaLeafletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapaLeafletModel());
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
        body: const SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: custom_widgets.ClusteringManyMarkersPage(
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

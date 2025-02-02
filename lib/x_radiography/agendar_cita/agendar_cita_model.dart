import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'agendar_cita_widget.dart' show AgendarCitaWidget;
import 'package:flutter/material.dart';

class AgendarCitaModel extends FlutterFlowModel<AgendarCitaWidget> {
  ///  Local state fields for this page.

  String diagnDescri = 'Vacío';

  DateTime? fechaCita;

  DateTime? horaCita;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}

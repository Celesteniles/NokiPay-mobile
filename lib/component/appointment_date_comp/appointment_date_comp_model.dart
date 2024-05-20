import '/flutter_flow/flutter_flow_util.dart';
import 'appointment_date_comp_widget.dart' show AppointmentDateCompWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AppointmentDateCompModel
    extends FlutterFlowModel<AppointmentDateCompWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'envoyer_select_widget.dart' show EnvoyerSelectWidget;
import 'package:flutter/material.dart';

class EnvoyerSelectModel extends FlutterFlowModel<EnvoyerSelectWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

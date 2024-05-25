import '/flutter_flow/flutter_flow_util.dart';
import 'paiement_widget.dart' show PaiementWidget;
import 'package:flutter/material.dart';

class PaiementModel extends FlutterFlowModel<PaiementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

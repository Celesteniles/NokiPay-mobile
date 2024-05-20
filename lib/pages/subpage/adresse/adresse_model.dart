import '/flutter_flow/flutter_flow_util.dart';
import 'adresse_widget.dart' show AdresseWidget;
import 'package:flutter/material.dart';

class AdresseModel extends FlutterFlowModel<AdresseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'qr_example_widget.dart' show QrExampleWidget;
import 'package:flutter/material.dart';

class QrExampleModel extends FlutterFlowModel<QrExampleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

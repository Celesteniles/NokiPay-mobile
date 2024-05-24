import '/flutter_flow/flutter_flow_util.dart';
import 'protection_page_widget.dart' show ProtectionPageWidget;
import 'package:flutter/material.dart';

class ProtectionPageModel extends FlutterFlowModel<ProtectionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  bool biometric = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

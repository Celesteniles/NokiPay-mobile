import '/flutter_flow/flutter_flow_util.dart';
import 'agree_page_widget.dart' show AgreePageWidget;
import 'package:flutter/material.dart';

class AgreePageModel extends FlutterFlowModel<AgreePageWidget> {
  ///  Local state fields for this page.

  bool agree = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

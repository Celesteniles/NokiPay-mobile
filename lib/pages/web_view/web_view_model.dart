import '/flutter_flow/flutter_flow_util.dart';
import 'web_view_widget.dart' show WebViewWidget;
import 'package:flutter/material.dart';

class WebViewModel extends FlutterFlowModel<WebViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

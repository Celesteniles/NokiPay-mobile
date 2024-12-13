import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pay_merchand_widget.dart' show PayMerchandWidget;
import 'package:flutter/material.dart';

class PayMerchandModel extends FlutterFlowModel<PayMerchandWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for codeMarchand widget.
  FocusNode? codeMarchandFocusNode;
  TextEditingController? codeMarchandTextController;
  String? Function(BuildContext, String?)? codeMarchandTextControllerValidator;
  var merchantCode = '';
  // Stores action output result for [Backend Call - API (Check Account)] action in Button widget.
  ApiCallResponse? apiCheckAccount;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeMarchandFocusNode?.dispose();
    codeMarchandTextController?.dispose();
  }
}

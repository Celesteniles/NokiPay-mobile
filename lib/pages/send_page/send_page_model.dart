import '/flutter_flow/flutter_flow_util.dart';
import 'send_page_widget.dart' show SendPageWidget;
import 'package:flutter/material.dart';

class SendPageModel extends FlutterFlowModel<SendPageWidget> {
  ///  Local state fields for this page.

  bool isCharge = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchContacts] action in SendPage widget.
  List<dynamic>? contacts;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

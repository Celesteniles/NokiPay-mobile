import '/flutter_flow/flutter_flow_util.dart';
import 'pay_widget.dart' show PayWidget;
import 'package:flutter/material.dart';

class PayModel extends FlutterFlowModel<PayWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for amountField widget.
  FocusNode? amountFieldFocusNode;
  TextEditingController? amountFieldTextController;
  String? Function(BuildContext, String?)? amountFieldTextControllerValidator;
  // State field(s) for codePin widget.
  FocusNode? codePinFocusNode;
  TextEditingController? codePinTextController;
  late bool codePinVisibility;
  String? Function(BuildContext, String?)? codePinTextControllerValidator;

  @override
  void initState(BuildContext context) {
    codePinVisibility = false;
  }

  @override
  void dispose() {
    amountFieldFocusNode?.dispose();
    amountFieldTextController?.dispose();

    codePinFocusNode?.dispose();
    codePinTextController?.dispose();
  }
}

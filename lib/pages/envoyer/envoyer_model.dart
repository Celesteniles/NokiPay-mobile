import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'envoyer_widget.dart' show EnvoyerWidget;
import 'package:flutter/material.dart';

class EnvoyerModel extends FlutterFlowModel<EnvoyerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for amountField widget.
  FocusNode? amountFieldFocusNode;
  TextEditingController? amountFieldTextController;
  String? Function(BuildContext, String?)? amountFieldTextControllerValidator;
  // State field(s) for phoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;
  // Stores action output result for [Custom Action - takeContactWithIndicatif] action in Icon widget.
  List<String>? contact;
  // State field(s) for codePin widget.
  FocusNode? codePinFocusNode;
  TextEditingController? codePinTextController;
  late bool codePinVisibility;
  String? Function(BuildContext, String?)? codePinTextControllerValidator;
  // Stores action output result for [Backend Call - API (Check Account)] action in Button widget.
  ApiCallResponse? apiAccount;

  @override
  void initState(BuildContext context) {
    codePinVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    amountFieldFocusNode?.dispose();
    amountFieldTextController?.dispose();

    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();

    codePinFocusNode?.dispose();
    codePinTextController?.dispose();
  }
}

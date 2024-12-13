import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for codePin widget.
  FocusNode? codePinFocusNode;
  TextEditingController? codePinTextController;
  late bool codePinVisibility;
  String? Function(BuildContext, String?)? codePinTextControllerValidator;
  // State field(s) for newCodePin widget.
  FocusNode? newCodePinFocusNode;
  TextEditingController? newCodePinTextController;
  late bool newCodePinVisibility;
  String? Function(BuildContext, String?)? newCodePinTextControllerValidator;
  // State field(s) for confirmationCodePin widget.
  FocusNode? confirmationCodePinFocusNode;
  TextEditingController? confirmationCodePinTextController;
  late bool confirmationCodePinVisibility;
  String? Function(BuildContext, String?)?
      confirmationCodePinTextControllerValidator;
  // Stores action output result for [Backend Call - API (Reset PIN Code)] action in Button widget.
  ApiCallResponse? apiResultsReset;

  @override
  void initState(BuildContext context) {
    codePinVisibility = false;
    newCodePinVisibility = false;
    confirmationCodePinVisibility = false;
  }

  @override
  void dispose() {
    codePinFocusNode?.dispose();
    codePinTextController?.dispose();

    newCodePinFocusNode?.dispose();
    newCodePinTextController?.dispose();

    confirmationCodePinFocusNode?.dispose();
    confirmationCodePinTextController?.dispose();
  }
}

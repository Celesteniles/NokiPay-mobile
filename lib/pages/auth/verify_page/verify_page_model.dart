import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verify_page_widget.dart' show VerifyPageWidget;
import 'package:flutter/material.dart';

class VerifyPageModel extends FlutterFlowModel<VerifyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Send OTP)] action in Text widget.
  ApiCallResponse? apiResultResend;
  // Stores action output result for [Backend Call - API (Verify OTP)] action in Button widget.
  ApiCallResponse? apiResultVerify;
  // Stores action output result for [Backend Call - API (Check Account)] action in Button widget.
  ApiCallResponse? apiResultCheckAccount;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
  }
}

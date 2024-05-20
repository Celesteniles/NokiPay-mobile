import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for country widget.
  final countryKey = GlobalKey();
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? countrySelectedOption;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '## ### ####');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for codePin widget.
  FocusNode? codePinFocusNode;
  TextEditingController? codePinTextController;
  late bool codePinVisibility;
  String? Function(BuildContext, String?)? codePinTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in SignInButton widget.
  ApiCallResponse? apiResultLogin;

  @override
  void initState(BuildContext context) {
    codePinVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    countryFocusNode?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    codePinFocusNode?.dispose();
    codePinTextController?.dispose();
  }
}

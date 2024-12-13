import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_copy_widget.dart' show LoginCopyWidget;
import 'package:flutter/material.dart';

class LoginCopyModel extends FlutterFlowModel<LoginCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for country widget.
  final countryKey1 = GlobalKey();
  FocusNode? countryFocusNode1;
  TextEditingController? countryTextController1;
  String? countrySelectedOption1;
  String? Function(BuildContext, String?)? countryTextController1Validator;
  // State field(s) for country widget.
  final countryKey2 = GlobalKey();
  FocusNode? countryFocusNode2;
  TextEditingController? countryTextController2;
  String? countrySelectedOption2;
  String? Function(BuildContext, String?)? countryTextController2Validator;
  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in SignInButton widget.
  ApiCallResponse? apiResultLogin;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    countryFocusNode1?.dispose();

    countryFocusNode2?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_copy_widget.dart' show RegisterCopyWidget;
import 'package:flutter/material.dart';

class RegisterCopyModel extends FlutterFlowModel<RegisterCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  // State field(s) for prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomTextController;
  String? Function(BuildContext, String?)? prenomTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  // State field(s) for numero_rue widget.
  FocusNode? numeroRueFocusNode;
  TextEditingController? numeroRueTextController;
  String? Function(BuildContext, String?)? numeroRueTextControllerValidator;
  // State field(s) for rue widget.
  FocusNode? rueFocusNode;
  TextEditingController? rueTextController;
  String? Function(BuildContext, String?)? rueTextControllerValidator;
  // State field(s) for avenue widget.
  FocusNode? avenueFocusNode;
  TextEditingController? avenueTextController;
  String? Function(BuildContext, String?)? avenueTextControllerValidator;
  // State field(s) for quartier widget.
  FocusNode? quartierFocusNode;
  TextEditingController? quartierTextController;
  String? Function(BuildContext, String?)? quartierTextControllerValidator;
  // State field(s) for ville widget.
  FocusNode? villeFocusNode;
  TextEditingController? villeTextController;
  String? Function(BuildContext, String?)? villeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Register)] action in SignInButton widget.
  ApiCallResponse? apiResultRegister;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();

    numeroRueFocusNode?.dispose();
    numeroRueTextController?.dispose();

    rueFocusNode?.dispose();
    rueTextController?.dispose();

    avenueFocusNode?.dispose();
    avenueTextController?.dispose();

    quartierFocusNode?.dispose();
    quartierTextController?.dispose();

    villeFocusNode?.dispose();
    villeTextController?.dispose();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  Local state fields for this page.

  String? genre;

  DateTime? dateNaissance;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomTextController;
  String? Function(BuildContext, String?)? prenomTextControllerValidator;
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  DateTime? datePicked;
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
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Register)] action in Button widget.
  ApiCallResponse? apiResultRegister;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    nomFocusNode?.dispose();
    nomTextController?.dispose();

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

    pinCodeController?.dispose();
  }
}

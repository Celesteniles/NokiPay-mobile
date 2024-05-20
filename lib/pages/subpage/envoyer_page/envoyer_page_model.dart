import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'envoyer_page_widget.dart' show EnvoyerPageWidget;
import 'package:flutter/material.dart';

class EnvoyerPageModel extends FlutterFlowModel<EnvoyerPageWidget> {
  ///  Local state fields for this page.

  String? mode;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // Stores action output result for [Custom Action - takeContactWithIndicatif] action in Icon widget.
  List<String>? contact;
  // State field(s) for prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomTextController;
  String? Function(BuildContext, String?)? prenomTextControllerValidator;
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  // State field(s) for phoneMobile widget.
  FocusNode? phoneMobileFocusNode;
  TextEditingController? phoneMobileTextController;
  String? Function(BuildContext, String?)? phoneMobileTextControllerValidator;
  // State field(s) for nomBanque widget.
  FocusNode? nomBanqueFocusNode;
  TextEditingController? nomBanqueTextController;
  String? Function(BuildContext, String?)? nomBanqueTextControllerValidator;
  // State field(s) for iban widget.
  FocusNode? ibanFocusNode;
  TextEditingController? ibanTextController;
  String? Function(BuildContext, String?)? ibanTextControllerValidator;
  // State field(s) for bic widget.
  FocusNode? bicFocusNode;
  TextEditingController? bicTextController;
  String? Function(BuildContext, String?)? bicTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Transfert NokiPay Remittence)] action in Button widget.
  ApiCallResponse? apiResultRegister;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    nomFocusNode?.dispose();
    nomTextController?.dispose();

    phoneMobileFocusNode?.dispose();
    phoneMobileTextController?.dispose();

    nomBanqueFocusNode?.dispose();
    nomBanqueTextController?.dispose();

    ibanFocusNode?.dispose();
    ibanTextController?.dispose();

    bicFocusNode?.dispose();
    bicTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    pinCodeController?.dispose();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receiver_page_widget.dart' show ReceiverPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ReceiverPageModel extends FlutterFlowModel<ReceiverPageWidget> {
  ///  Local state fields for this page.

  String? mode;

  ///  State fields for stateful widgets in this page.

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
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for phoneMobile widget.
  FocusNode? phoneMobileFocusNode;
  TextEditingController? phoneMobileTextController;
  String? Function(BuildContext, String?)? phoneMobileTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for nomBanque widget.
  FocusNode? nomBanqueFocusNode;
  TextEditingController? nomBanqueTextController;
  String? Function(BuildContext, String?)? nomBanqueTextControllerValidator;
  // State field(s) for iban widget.
  FocusNode? ibanFocusNode;
  TextEditingController? ibanTextController;
  String? Function(BuildContext, String?)? ibanTextControllerValidator;
  // State field(s) for acccount_number widget.
  FocusNode? acccountNumberFocusNode;
  TextEditingController? acccountNumberTextController;
  String? Function(BuildContext, String?)?
      acccountNumberTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add Contact)] action in Button widget.
  ApiCallResponse? apiResultndl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    expandableExpandableController1.dispose();
    phoneMobileFocusNode?.dispose();
    phoneMobileTextController?.dispose();

    expandableExpandableController2.dispose();
    nomBanqueFocusNode?.dispose();
    nomBanqueTextController?.dispose();

    ibanFocusNode?.dispose();
    ibanTextController?.dispose();

    acccountNumberFocusNode?.dispose();
    acccountNumberTextController?.dispose();
  }
}

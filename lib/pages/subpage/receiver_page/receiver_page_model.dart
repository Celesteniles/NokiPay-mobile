import '/flutter_flow/flutter_flow_util.dart';
import 'receiver_page_widget.dart' show ReceiverPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ReceiverPageModel extends FlutterFlowModel<ReceiverPageWidget> {
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
  // State field(s) for bic widget.
  FocusNode? bicFocusNode;
  TextEditingController? bicTextController;
  String? Function(BuildContext, String?)? bicTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    expandableExpandableController1.dispose();
    phoneMobileFocusNode?.dispose();
    phoneMobileTextController?.dispose();

    expandableExpandableController2.dispose();
    nomBanqueFocusNode?.dispose();
    nomBanqueTextController?.dispose();

    ibanFocusNode?.dispose();
    ibanTextController?.dispose();

    bicFocusNode?.dispose();
    bicTextController?.dispose();
  }
}

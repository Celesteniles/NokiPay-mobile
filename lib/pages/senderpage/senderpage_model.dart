import '/flutter_flow/flutter_flow_util.dart';
import 'senderpage_widget.dart' show SenderpageWidget;
import 'package:flutter/material.dart';

class SenderpageModel extends FlutterFlowModel<SenderpageWidget> {
  ///  Local state fields for this page.

  bool isCharge = false;

  bool isNotEnough = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - fetchContacts] action in Senderpage widget.
  List<dynamic>? contacts;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for objet widget.
  FocusNode? objetFocusNode;
  TextEditingController? objetTextController;
  String? Function(BuildContext, String?)? objetTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    objetFocusNode?.dispose();
    objetTextController?.dispose();
  }
}

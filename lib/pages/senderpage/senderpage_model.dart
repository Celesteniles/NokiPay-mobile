import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'senderpage_widget.dart' show SenderpageWidget;
import 'package:flutter/material.dart';

class SenderpageModel extends FlutterFlowModel<SenderpageWidget> {
  ///  Local state fields for this page.

  bool isNotEnough = false;

  double? frais;

  double? total;

  double? converted;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Solde)] action in Senderpage widget.
  ApiCallResponse? apiResultatPin;
  // State field(s) for senderAmount widget.
  FocusNode? senderAmountFocusNode;
  TextEditingController? senderAmountTextController;
  String? Function(BuildContext, String?)? senderAmountTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get Fees)] action in senderAmount widget.
  ApiCallResponse? apiResultnqh;
  // State field(s) for receiverAmount widget.
  FocusNode? receiverAmountFocusNode;
  TextEditingController? receiverAmountTextController;
  String? Function(BuildContext, String?)?
      receiverAmountTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get Fees)] action in receiverAmount widget.
  ApiCallResponse? apiResultnqhCopy;
  // State field(s) for objet widget.
  FocusNode? objetFocusNode;
  TextEditingController? objetTextController;
  String? Function(BuildContext, String?)? objetTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    senderAmountFocusNode?.dispose();
    senderAmountTextController?.dispose();

    receiverAmountFocusNode?.dispose();
    receiverAmountTextController?.dispose();

    objetFocusNode?.dispose();
    objetTextController?.dispose();
  }
}

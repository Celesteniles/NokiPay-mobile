import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirmation_transaction_widget.dart'
    show ConfirmationTransactionWidget;
import 'package:flutter/material.dart';

class ConfirmationTransactionModel
    extends FlutterFlowModel<ConfirmationTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Transfert NokiPay)] action in Button widget.
  ApiCallResponse? apiResultTransfert;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

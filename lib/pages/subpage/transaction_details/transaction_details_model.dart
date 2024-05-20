import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_details_widget.dart' show TransactionDetailsWidget;
import 'package:flutter/material.dart';

class TransactionDetailsModel
    extends FlutterFlowModel<TransactionDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

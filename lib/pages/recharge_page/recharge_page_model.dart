import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recharge_page_widget.dart' show RechargePageWidget;
import 'package:flutter/material.dart';

class RechargePageModel extends FlutterFlowModel<RechargePageWidget> {
  ///  Local state fields for this page.

  String? mode;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for amountField widget.
  FocusNode? amountFieldFocusNode;
  TextEditingController? amountFieldTextController;
  String? Function(BuildContext, String?)? amountFieldTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // Stores action output result for [Custom Action - takeContactWithIndicatif] action in Icon widget.
  List<String>? contact;
  // Stores action output result for [Backend Call - API (Depot)] action in Button widget.
  ApiCallResponse? apiResultRecharge;
  // Stores action output result for [Backend Call - API (Depot Bank)] action in Button widget.
  ApiCallResponse? apiResultRechargeBank;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    amountFieldFocusNode?.dispose();
    amountFieldTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}

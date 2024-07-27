import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'merchand_code_component_widget.dart' show MerchandCodeComponentWidget;
import 'package:flutter/material.dart';

class MerchandCodeComponentModel
    extends FlutterFlowModel<MerchandCodeComponentWidget> {
  ///  Local state fields for this component.

  bool isProcessing = false;

  bool isFailed = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Check Account)] action in PinCode widget.
  ApiCallResponse? apiResult016;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}

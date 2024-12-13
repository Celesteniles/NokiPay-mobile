import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'merchand_pin_component_widget.dart' show MerchandPinComponentWidget;
import 'package:flutter/material.dart';

class MerchandPinComponentModel
    extends FlutterFlowModel<MerchandPinComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Merchant Pay)] action in Button widget.
  ApiCallResponse? apiResult5rq;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}

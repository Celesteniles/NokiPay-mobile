import '/flutter_flow/flutter_flow_util.dart';
import 'merchand_code_component_widget.dart' show MerchandCodeComponentWidget;
import 'package:flutter/material.dart';

class MerchandCodeComponentModel
    extends FlutterFlowModel<MerchandCodeComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}

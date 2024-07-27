import '/flutter_flow/flutter_flow_util.dart';
import 'merchand_price_component_widget.dart' show MerchandPriceComponentWidget;
import 'package:flutter/material.dart';

class MerchandPriceComponentModel
    extends FlutterFlowModel<MerchandPriceComponentWidget> {
  ///  Local state fields for this component.

  bool isValid = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for payAmount widget.
  FocusNode? payAmountFocusNode;
  TextEditingController? payAmountTextController;
  String? Function(BuildContext, String?)? payAmountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    payAmountFocusNode?.dispose();
    payAmountTextController?.dispose();
  }
}

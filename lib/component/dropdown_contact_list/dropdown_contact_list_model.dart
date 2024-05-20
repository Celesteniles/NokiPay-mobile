import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown_contact_list_widget.dart' show DropdownContactListWidget;
import 'package:flutter/material.dart';

class DropdownContactListModel
    extends FlutterFlowModel<DropdownContactListWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

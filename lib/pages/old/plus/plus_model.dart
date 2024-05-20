import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'plus_widget.dart' show PlusWidget;
import 'package:flutter/material.dart';

class PlusModel extends FlutterFlowModel<PlusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Query cache managers for this widget.

  final _soldeManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> solde({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _soldeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSoldeCache() => _soldeManager.clear();
  void clearSoldeCacheKey(String? uniqueKey) =>
      _soldeManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearSoldeCache();
  }
}

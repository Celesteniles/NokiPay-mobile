import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'releve_page_copy_widget.dart' show RelevePageCopyWidget;
import 'package:flutter/material.dart';

class RelevePageCopyModel extends FlutterFlowModel<RelevePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;

  /// Query cache managers for this widget.

  final _transactionManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> transaction({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _transactionManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTransactionCache() => _transactionManager.clear();
  void clearTransactionCacheKey(String? uniqueKey) =>
      _transactionManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearTransactionCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'home_page_old_widget.dart' show HomePageOldWidget;
import 'package:flutter/material.dart';

class HomePageOldModel extends FlutterFlowModel<HomePageOldWidget> {
  /// Query cache managers for this widget.

  final _soldeCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> soldeCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _soldeCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSoldeCacheCache() => _soldeCacheManager.clear();
  void clearSoldeCacheCacheKey(String? uniqueKey) =>
      _soldeCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearSoldeCacheCache();
  }
}

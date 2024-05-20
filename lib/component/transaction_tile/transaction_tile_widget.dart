import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'transaction_tile_model.dart';
export 'transaction_tile_model.dart';

class TransactionTileWidget extends StatefulWidget {
  const TransactionTileWidget({
    super.key,
    required this.title,
    required this.content,
  });

  final String? title;
  final String? content;

  @override
  State<TransactionTileWidget> createState() => _TransactionTileWidgetState();
}

class _TransactionTileWidgetState extends State<TransactionTileWidget> {
  late TransactionTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

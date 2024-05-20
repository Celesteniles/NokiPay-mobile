// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:connectivity_plus_widget/connectivity/connectivity_plus_service.dart';
import 'package:connectivity_plus_widget/connectivity/connectivity_widget.dart';

class Connectivity extends StatefulWidget {
  const Connectivity({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Connectivity> createState() => _ConnectivityState();
}

class _ConnectivityState extends State<Connectivity> {
  @override
  Widget build(BuildContext context) {
    return ConnectivityPlusCustomWidget(
      customWidget: Center(
        child: Container(
          child: const Center(child: Text("Custom Widget ")),
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(
              width: 10,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

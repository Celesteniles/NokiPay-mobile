// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

Future<void> changeStatusBarColor() async {
  // var flutterflow = await FlutterFlowTheme.initialize();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.transparent, // Change the color whatever you want
    ),
  );
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

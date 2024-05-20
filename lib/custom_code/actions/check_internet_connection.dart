// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;

Future<bool> checkInternetConnection() async {
  // Add your function code here!
  // Check internet connectionn
  try {
    final result = await InternetAddress.lookup('partners.nokipay.net');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      // FFAppState().update(() {
      //   FFAppState().connected = true;
      // });
      // FFAppState().notifyListeners();
      return true;
    }
  } catch (e) {
    try {
      final result = await http.get(Uri.parse('https://partners.nokipay.net'));
      if (result.statusCode == 200) {
        // FFAppState().update(() {
        //   FFAppState().connected = true;
        // });
        // FFAppState().notifyListeners();
        return true;
      } else {
        // FFAppState().update(() {
        //   FFAppState().connected = false;
        // });
        // FFAppState().notifyListeners();
        return false;
      }
    } on SocketException catch (_) {
      // FFAppState().update(() {
      //   FFAppState().connected = false;
      // });
      // FFAppState().notifyListeners();
      return false;
    }
  }
  // FFAppState().update(() {
  //   FFAppState().connected = false;
  // });
  // FFAppState().notifyListeners();
  return false;
}

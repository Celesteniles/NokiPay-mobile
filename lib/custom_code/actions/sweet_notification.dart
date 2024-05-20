// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';

ElegantNotification createNotification(
  String type,
  String message,
) {
  final toastDuration = Duration(seconds: 7);
  final double toastHeight = 50;
  final double toastWidth = 400; //package default
  final double iconSize = 30;
  final double fontSize = 14;

  IconData iconData;
  Color color;

  switch (type) {
    case 'success':
      iconData = Icons.check_circle;
      color = Colors.green;
      break;
    case 'warning':
      iconData = Icons.report_problem;
      color = Colors.orange;
      break;
    case 'error':
      iconData = Icons.error;
      color = Colors.red;
      break;
    default:
      iconData = Icons.info;
      color = Colors.blue;
      break;
  }

  return ElegantNotification(
    description: Text(
      message,
      style: TextStyle(fontSize: fontSize, color: Colors.black),
    ),
    toastDuration: toastDuration,
    progressIndicatorColor: color,
    showProgressIndicator: false,
    height: toastHeight,
    width: toastWidth,
    animation: AnimationType.fromTop,
    icon: Icon(iconData, color: color, size: iconSize),
  );
}

Future sweetNotification(
  BuildContext context,
  String message,
  String? type,
) async {
  // Add your function code here!
  ElegantNotification notification = createNotification(
    type ?? 'info',
    message,
  );

  notification.show(context);
}

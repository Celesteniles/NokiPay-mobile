// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_date_range_picker/flutter_date_range_picker.dart';

Future showDatePicker(
  BuildContext context,
  DateTime? initialStartDate,
  DateTime? initialEndDate,
) async {
  DateTimeRange? selectedDateRange;
  // Add your function code here!
  if (initialStartDate != null && initialEndDate != null) {
    selectedDateRange =
        DateTimeRange(start: initialStartDate!, end: initialEndDate!);
  }
  // Add your function code here!
  final DateTimeRange? picked = await showDateRangePicker(
    context: context,
    firstDate: DateTime(2023),
    lastDate: DateTime(2050),
    barrierColor: Color.fromARGB(255, 255, 221, 15),
    initialDateRange: selectedDateRange,
    builder: (context, child) {
      // Apply constraints to the date picker dialog
      return Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 400.0, // Adjust the width as needed
            maxHeight: MediaQuery.of(context).size.height *
                0.8, // Optionally limit the height
          ),
          child: child!,
        ),
      );
    },
  );
  if (picked != null) {
    FFAppState().update(() {
      selectedDateRange = picked;
      FFAppState().startDate = picked.start;
      FFAppState().endDate = picked.end;
      // widget.updatePageUI();
    });
  }
}

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

import 'package:flutter_date_range_picker/flutter_date_range_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DateRangePicker extends StatefulWidget {
  const DateRangePicker({
    super.key,
    this.width,
    this.height,
    this.initialStartDate,
    this.initialEndDate,
  });

  final double? width;
  final double? height;
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;

  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  DateTimeRange? selectedDateRange;

  @override
  void initState() {
    super.initState();
    if (widget.initialStartDate != null && widget.initialEndDate != null) {
      selectedDateRange = DateTimeRange(
          start: widget.initialStartDate!, end: widget.initialEndDate!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiareBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Color(0x33000000),
                offset: Offset(
                  0,
                  1,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Affichage des transactions",
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 13,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Du ",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '${DateFormat('dd-MM-yyyy').format(selectedDateRange!.start)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: " au ",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '${DateFormat('dd-MM-yyyy').format(selectedDateRange!.end)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 13,
                                letterSpacing: 0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: VerticalDivider(
                    thickness: 0.4,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                InkWell(
                  onTap: showCustomDateRangePicker,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidCalendarAlt,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 32,
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(width: 12)),
            ),
          ),
        ),
      ),
    );
  }

  void showCustomDateRangePicker() async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
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
      setState(() {
        selectedDateRange = picked;
        FFAppState().startDate = picked.start;
        FFAppState().endDate = picked.end;
        // widget.updatePageUI();
      });
    }
  }
}

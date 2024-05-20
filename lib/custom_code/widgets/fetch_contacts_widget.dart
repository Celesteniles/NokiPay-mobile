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

import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';

class FetchContactsWidget extends StatefulWidget {
  const FetchContactsWidget({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<FetchContactsWidget> createState() => _FetchContactsWidgetState();
}

class _FetchContactsWidgetState extends State<FetchContactsWidget> {
  List<Contact> _contacts = [];

  @override
  void initState() {
    super.initState();
    _getContacts();
  }

  Future<List<Contact>> _getContacts({String? query}) async {
    List<Contact> contacts = [];

    if (await Permission.contacts.request().isGranted) {
      Iterable<Contact> _contacts = await ContactsService.getContacts();
      contacts = _contacts.toList();

      if (query != null && query.isNotEmpty) {
        contacts = contacts.where((contact) {
          String name = contact.displayName ?? '';
          String phone =
              contact.phones != null ? contact.phones?.first.value ?? '' : '';
          return name.toLowerCase().contains(query.toLowerCase()) ||
              phone
                  .replaceAll(RegExp(r'\s+'), '')
                  .contains(query.replaceAll(RegExp(r'\s+'), ''));
        }).toList();
      }
    }

    return contacts;
  }

  void _searchContacts(String query) async {
    List<Contact> filteredContacts = await _getContacts(query: query);
    setState(() {
      _contacts = filteredContacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _contacts.length,
      itemBuilder: (context, index) {
        Contact contact = _contacts[index];
        return Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  functions.getInitial(contact.displayName ?? 'No name'),
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w800,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contact.displayName ?? 'No name',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
                Text(
                  contact.phones != null
                      ? contact.phones?.first.value ?? 'No phone number'
                      : 'No phone number',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 10,
                        letterSpacing: 0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ].divide(SizedBox(width: 15)),
        );
      },
    );
  }
}

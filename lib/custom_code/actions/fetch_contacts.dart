// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

Future<List<dynamic>?> fetchContacts(String? query) async {
  // Add your function code here!
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

    return contacts;
  }
}

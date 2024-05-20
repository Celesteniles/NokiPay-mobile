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

import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

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

  FutureOr<List<Contact>> _getContacts({String? query}) async {
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
        return ListTile(
          title: Text(contact.displayName ?? 'No name'),
          subtitle: Text(contact.phones != null
              ? contact.phones?.first.value ?? 'No phone number'
              : 'No phone number'),
        );
      },
    );
  }
}

// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:local_auth/local_auth.dart';
import 'dart:async';

Future<void> initializeApp() async {
  /// Ajouter l'observateur du cycle de vie
  WidgetsBinding.instance.addObserver(AppLifecycleObserver());

  FFAppState().isBalance = false;

  // Effectuer l'authentification initiale
  if (!FFAppState().isBlockAllow) {
    await authenticateUser();
  }
}

Future<void> authenticateUser() async {
  final LocalAuthentication auth = LocalAuthentication();
  try {
    final bool authenticated = await auth.authenticate(
      localizedReason:
          "Veuillez vous authentifier pour accéder à l'application",
      options: const AuthenticationOptions(
        useErrorDialogs: true,
        stickyAuth: true,
      ),
    );
    FFAppState().connected = authenticated;
  } catch (e) {
    print(e);
  }
}

class AppLifecycleObserver with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Do something when app is resumed
      print('App is in foreground');
      if (!FFAppState().connected) {
        if (!FFAppState().isBlockAllow) {
          _authenticate();
        }
      }
    } else if (state == AppLifecycleState.paused) {
      // Do something when app is paused
      print('App is in background');
      FFAppState().connected = false;
    }
  }

  Future<void> _authenticate() async {
    final LocalAuthentication auth = LocalAuthentication();
    try {
      final bool authenticated = await auth.authenticate(
        localizedReason:
            "Veuillez vous authentifier pour accéder à l'application",
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      FFAppState().connected = authenticated;
    } catch (e) {
      print(e);
    }
  }
}

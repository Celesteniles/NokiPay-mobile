// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// DO NOT REMOVE OR MODIFY THE CODE ABOVE!`

import 'package:google_fonts/google_fonts.dart';

import 'package:local_auth/local_auth.dart';

final LocalAuthentication auth = LocalAuthentication();

Future onAppBackgroundAlt() async {
  // Add your function code here!
  WidgetsBinding.instance.addObserver(AppLifecycleObserver());
}

class AppLifecycleObserver with WidgetsBindingObserver {
// Utilisation d'un GlobalKey pour obtenir le contexte global
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Do something when app is resumed
      print('Application au premier plan');
      if (!FFAppState().connected) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _authenticate(navigatorKey);
        });
      }
    } else if (state == AppLifecycleState.paused) {
      // Do something when app is paused
      print('Application en arrière plan');
      FFAppState().connected = false;
    }
  }
}

Future<void> _authenticate(GlobalKey<NavigatorState> navigatorKey) async {
  // Obtenez le contexte global à partir du navigatorKey
  final context = navigatorKey.currentContext;
  if (context == null) {
    print('Global context is null');
    return;
  }
  try {
    // Affichez un modal pendant l'authentification
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Widget de fond couvrant tout l'écran
            Positioned.fill(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/NokiPay_copie.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      "NokiPay verrouillé",
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 22,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ),
            ),

            AlertDialog(
              title: Text('Authentification requise'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text(
                      "Veuillez vous authentifier pour accéder à l'application"),
                ],
              ),
            ),
          ],
        );
      },
    );

    final bool authenticated = await auth.authenticate(
      localizedReason:
          "Veuillez vous authentifier pour accéder à l'application",
      options: const AuthenticationOptions(
        useErrorDialogs: true,
        stickyAuth: true,
      ),
    );

    Navigator.of(context).pop(); // Ferme le modal après l'authentification

    FFAppState().connected = authenticated;
    // Redémarrez l'application pour refléter le nouvel état
    //runApp(MyApp());
  } catch (e) {
    Navigator.of(context).pop(); // Ferme le modal en cas d'erreur
    print(e);
  }
}

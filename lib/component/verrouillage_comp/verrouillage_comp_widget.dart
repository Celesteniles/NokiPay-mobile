import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'verrouillage_comp_model.dart';
export 'verrouillage_comp_model.dart';

class VerrouillageCompWidget extends StatefulWidget {
  const VerrouillageCompWidget({super.key});

  @override
  State<VerrouillageCompWidget> createState() => _VerrouillageCompWidgetState();
}

class _VerrouillageCompWidgetState extends State<VerrouillageCompWidget> {
  late VerrouillageCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerrouillageCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final localAuth = LocalAuthentication();
      bool isBiometricSupported = await localAuth.isDeviceSupported();

      if (isBiometricSupported) {
        _model.biometrie = await localAuth.authenticate(
            localizedReason: FFLocalizations.of(context).getText(
          'ywnu47jx' /* Veuillez vous authentifier pou... */,
        ));
        setState(() {});
      }

      if (_model.biometrie) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/NokiPay_copie.png',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'ye7xhy7t' /* NokiPay verrouillé */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                '2q7avm8d' /* Déverrouiller */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).alternate,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 0.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

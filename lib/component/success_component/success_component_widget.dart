import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'success_component_model.dart';
export 'success_component_model.dart';

class SuccessComponentWidget extends StatefulWidget {
  const SuccessComponentWidget({
    super.key,
    required this.amount,
  });

  final String? amount;

  @override
  State<SuccessComponentWidget> createState() => _SuccessComponentWidgetState();
}

class _SuccessComponentWidgetState extends State<SuccessComponentWidget> {
  late SuccessComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessComponentModel());
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
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderRadius: 30.0,
                  borderWidth: 2.0,
                  buttonSize: 44.0,
                  icon: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    context.goNamed(
                      'Home',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            width: 140.0,
            height: 140.0,
            decoration: BoxDecoration(
              color: const Color(0x6619B00C),
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).success,
                width: 2.0,
              ),
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Icon(
                Icons.check_rounded,
                color: FlutterFlowTheme.of(context).success,
                size: 60.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(35.0, 24.0, 35.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '8m7r8f1i' /* Transaction confirmée ! */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                    color: FlutterFlowTheme.of(context).success,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).displaySmallFamily),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.amount,
                '-',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).displayLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).displayLargeFamily,
                    fontSize: 46.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).displayLargeFamily),
                  ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      context.goNamed('Home');
                    },
                    text: FFLocalizations.of(context).getText(
                      '9i1tsk64' /* Retour à la page d'accueil */,
                    ),
                    options: FFButtonOptions(
                      width: 230.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).alternate,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyLarge
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyLargeFamily),
                          ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

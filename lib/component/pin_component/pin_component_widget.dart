import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pin_component_model.dart';
export 'pin_component_model.dart';

class PinComponentWidget extends StatefulWidget {
  const PinComponentWidget({
    super.key,
    required this.actionComp,
  });

  final Future Function()? actionComp;

  @override
  State<PinComponentWidget> createState() => _PinComponentWidgetState();
}

class _PinComponentWidgetState extends State<PinComponentWidget> {
  late PinComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PinComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                't9cwbhrn' /* Confirmer */,
              ),
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineLargeFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineLargeFamily),
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_outline,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 18.0,
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'a72yp583' /* Saisie ton code PIN */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ].divide(const SizedBox(width: 5.0)),
            ),
            PinCodeTextField(
              autoDisposeControllers: false,
              appContext: context,
              length: 4,
              textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyLargeFamily),
                  ),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              enableActiveFill: true,
              autoFocus: true,
              enablePinAutofill: false,
              errorTextSpace: 16.0,
              showCursor: true,
              cursorColor: FlutterFlowTheme.of(context).primary,
              obscureText: true,
              obscuringCharacter: '●',
              hintCharacter: '-',
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                fieldHeight: 44.0,
                fieldWidth: 44.0,
                borderWidth: 2.0,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(6.0),
                  bottomRight: Radius.circular(6.0),
                  topLeft: Radius.circular(6.0),
                  topRight: Radius.circular(6.0),
                ),
                shape: PinCodeFieldShape.box,
                activeColor: Colors.white,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                selectedColor: Colors.black,
                activeFillColor: Colors.white,
                inactiveFillColor: FlutterFlowTheme.of(context).alternate,
                selectedFillColor: Colors.black,
              ),
              controller: _model.pinCodeController,
              onChanged: (_) {},
              onCompleted: (_) async {
                await actions.customToast(
                  'Vérification en cours ...',
                );
                _model.apiResultatPin = await ApiNokiPayGroup.checkPINCall.call(
                  pin: _model.pinCodeController!.text,
                  accessToken: FFAppState().accessToken,
                );
                if ((_model.apiResultatPin?.succeeded ?? true) &&
                    (ApiNokiPayGroup.checkPINCall.code(
                          (_model.apiResultatPin?.jsonBody ?? ''),
                        ) ==
                        FFAppState().zero)) {
                  FFAppState().update(() {
                    FFAppState().balance = ApiNokiPayGroup.checkPINCall.solde(
                      (_model.apiResultatPin?.jsonBody ?? ''),
                    )!;
                    FFAppState().currency =
                        ApiNokiPayGroup.checkPINCall.currency(
                      (_model.apiResultatPin?.jsonBody ?? ''),
                    )!;
                  });
                  await widget.actionComp?.call();
                  Navigator.pop(context);
                } else {
                  await actions.sweetNotification(
                    context,
                    valueOrDefault<String>(
                      functions.arrayToString(ApiNokiPayGroup.checkPINCall
                          .msg(
                            (_model.apiResultatPin?.jsonBody ?? ''),
                          )
                          ?.toList()),
                      'Quelque chose ne s\'est pas bien passée.',
                    ),
                    'error',
                  );
                }

                setState(() {});
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: _model.pinCodeControllerValidator.asValidator(context),
            ),
          ].divide(const SizedBox(height: 20.0)),
        ),
      ),
    );
  }
}

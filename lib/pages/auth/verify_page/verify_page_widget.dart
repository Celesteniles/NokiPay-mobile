import '/backend/api_requests/api_calls.dart';
import '/component/phone_verified/phone_verified_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'verify_page_model.dart';
export 'verify_page_model.dart';

class VerifyPageWidget extends StatefulWidget {
  const VerifyPageWidget({
    super.key,
    required this.phone,
    required this.dialCode,
  });

  final String? phone;
  final String? dialCode;

  @override
  State<VerifyPageWidget> createState() => _VerifyPageWidgetState();
}

class _VerifyPageWidgetState extends State<VerifyPageWidget> {
  late VerifyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        '',
                      ).image,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: ClipRect(
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 5.0,
                                sigmaY: 20.0,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/To_gradian.png',
                                  width: double.infinity,
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                  alignment: const Alignment(0.0, 1.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.goNamed('Onboarding');
                                      },
                                      child: const Icon(
                                        Icons.close_rounded,
                                        color: Colors.black,
                                        size: 26.0,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'n61dq5ds' /* Connexion */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                    Opacity(
                                      opacity: 0.0,
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 26.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '9cfnfpq9' /* Vérifions ton numéro */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily,
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily),
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        44.0, 8.0, 44.0, 0.0),
                                    child: Text(
                                      'Un code de vérification a été envoyé au ${widget.dialCode}${widget.phone}',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: PinCodeTextField(
                                      autoDisposeControllers: false,
                                      appContext: context,
                                      length: 6,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily),
                                          ),
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      enableActiveFill: true,
                                      autoFocus: true,
                                      enablePinAutofill: true,
                                      errorTextSpace: 16.0,
                                      showCursor: true,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      obscureText: false,
                                      hintCharacter: '-',
                                      keyboardType: TextInputType.number,
                                      pinTheme: PinTheme(
                                        fieldHeight: 44.0,
                                        fieldWidth: 44.0,
                                        borderWidth: 2.0,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                        shape: PinCodeFieldShape.box,
                                        activeColor:
                                            FlutterFlowTheme.of(context).info,
                                        inactiveColor:
                                            FlutterFlowTheme.of(context).info,
                                        selectedColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        activeFillColor:
                                            FlutterFlowTheme.of(context).info,
                                        inactiveFillColor:
                                            FlutterFlowTheme.of(context).info,
                                        selectedFillColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                      controller: _model.pinCodeController,
                                      onChanged: (_) {},
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: _model
                                          .pinCodeControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.0,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'xqmbnbnn' /* Expire dans : 23s */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await actions.customToast(
                                        'Renvoie de l\'OTP ...',
                                      );
                                      _model.apiResultResend =
                                          await ApiNokiPayGroup.sendOTPCall
                                              .call(
                                        phone: widget.phone,
                                        dialCode: widget.dialCode,
                                      );

                                      if ((_model.apiResultResend?.succeeded ??
                                              true) &&
                                          (ApiNokiPayGroup.sendOTPCall.code(
                                                (_model.apiResultResend
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              FFAppState().zero)) {
                                        await actions.sweetNotification(
                                          context,
                                          functions.arrayToString(
                                              ApiNokiPayGroup.sendOTPCall
                                                  .msg(
                                                    (_model.apiResultResend
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.toList())!,
                                          'success',
                                        );
                                      } else {
                                        await actions.sweetNotification(
                                          context,
                                          valueOrDefault<String>(
                                            functions.arrayToString(
                                                ApiNokiPayGroup.sendOTPCall
                                                    .msg(
                                                      (_model.apiResultResend
                                                              ?.jsonBody ??
                                                          ''),
                                                    )
                                                    ?.toList()),
                                            'Quelque chose ne s\'est pas bien passée.',
                                          ),
                                          'error',
                                        );
                                      }

                                      setState(() {});
                                    },
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'meyjtmjo' /* Renvoyer le code */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ].divide(const SizedBox(height: 50.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Builder(
                              builder: (context) => Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await actions.customToast(
                                      'Vérification en cours ...',
                                    );
                                    _model.apiResultVerify =
                                        await ApiNokiPayGroup.verifyOTPCall
                                            .call(
                                      digit: _model.pinCodeController!.text,
                                      telephone:
                                          '${widget.dialCode}${widget.phone}',
                                    );

                                    if ((_model.apiResultVerify?.succeeded ??
                                            true) &&
                                        (ApiNokiPayGroup.verifyOTPCall.code(
                                              (_model.apiResultVerify
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            FFAppState().zero)) {
                                      _model.apiResultCheckAccount =
                                          await ApiNokiPayGroup.checkAccountCall
                                              .call(
                                        phone:
                                            '${widget.dialCode}${widget.phone}',
                                      );

                                      await actions.sweetNotification(
                                        context,
                                        'Numéro de téléphone vérifié avec succès',
                                        'success',
                                      );
                                      if ((_model.apiResultCheckAccount
                                                  ?.succeeded ??
                                              true) &&
                                          (ApiNokiPayGroup.checkAccountCall
                                                  .code(
                                                (_model.apiResultCheckAccount
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              FFAppState().zero)) {
                                        FFAppState().UserConnecte =
                                            ApiNokiPayGroup.checkAccountCall
                                                .userData(
                                          (_model.apiResultCheckAccount
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        setState(() {});

                                        context.goNamed(
                                          'LoginPage',
                                          queryParameters: {
                                            'phone': serializeParam(
                                              '${widget.dialCode}${widget.phone}',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        await showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  const AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: PhoneVerifiedWidget(
                                                      phone: widget.phone!,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      }
                                    } else {
                                      await actions.sweetNotification(
                                        context,
                                        valueOrDefault<String>(
                                          functions.arrayToString((_model
                                                  .apiResultVerify?.jsonBody ??
                                              '')),
                                          'Quelque chose ne s\'est pas bien passé.',
                                        ),
                                        'error',
                                      );
                                    }

                                    setState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    's6dv84bf' /* Continuer */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 46.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: Colors.black,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

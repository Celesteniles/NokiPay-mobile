import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pay_merchand_model.dart';
export 'pay_merchand_model.dart';

class PayMerchandWidget extends StatefulWidget {
  const PayMerchandWidget({super.key});

  @override
  State<PayMerchandWidget> createState() => _PayMerchandWidgetState();
}

class _PayMerchandWidgetState extends State<PayMerchandWidget> {
  late PayMerchandModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayMerchandModel());

    _model.codeMarchandTextController ??=
        TextEditingController(text: _model.merchantCode);
    _model.codeMarchandFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).noire,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'umcigico' /* Payer un marchand */,
            ),
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineSmallFamily),
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 1.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 50.0, 15.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'inkeyflh' /* Entrez le code marchant */,
                                  ),
                                  style: const TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ].divide(const SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.codeMarchandTextController,
                          focusNode: _model.codeMarchandFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.codeMarchandTextController',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofocus: true,
                          autofillHints: const [AutofillHints.telephoneNumber],
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'dlcqlr8a' /* Code Marchand */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).tertiareBackground,
                            contentPadding: const EdgeInsets.all(24.0),
                            suffixIcon: _model
                                    .codeMarchandTextController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.codeMarchandTextController
                                          ?.clear();
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.clear,
                                      color: Color(0xFF757575),
                                      size: 22.0,
                                    ),
                                  )
                                : null,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          maxLength: 15,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.number,
                          validator: _model.codeMarchandTextControllerValidator
                              .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                          ],
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).accent1,
                      icon: Icon(
                        Icons.qr_code_scanner_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.merchantCode =
                            await FlutterBarcodeScanner.scanBarcode(
                          '#C62828', // scanning line color
                          FFLocalizations.of(context).getText(
                            'mbcsn6qc' /* Annuler */,
                          ), // cancel button text
                          true, // whether to show the flash icon
                          ScanMode.QR,
                        );

                        setState(() {});
                      },
                    ),
                  ].divide(const SizedBox(width: 12.0)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 3.0),
                      child: FFButtonWidget(
                        onPressed: (_model.codeMarchandTextController.text == '')
                            ? null
                            : () async {
                                if (_model.codeMarchandTextController.text ==
                                        '') {
                                  await actions.sweetNotification(
                                    context,
                                    'Veuillez insérer un code marchand valide ou scannez le code QR du marchand',
                                    'warning',
                                  );
                                } else {
                                  _model.apiCheckAccount = await ApiNokiPayGroup
                                      .checkAccountCall
                                      .call(
                                    accessToken: FFAppState().accessToken,
                                    phone:
                                        _model.codeMarchandTextController.text,
                                  );

                                  if ((_model.apiCheckAccount?.succeeded ??
                                          true) &&
                                      (ApiNokiPayGroup.checkAccountCall.code(
                                            (_model.apiCheckAccount?.jsonBody ??
                                                ''),
                                          ) ==
                                          FFAppState().zero)) {
                                    context.pushNamed(
                                      'Pay',
                                      queryParameters: {
                                        'code': serializeParam(
                                          _model
                                              .codeMarchandTextController.text,
                                          ParamType.String,
                                        ),
                                        'name': serializeParam(
                                          '${getJsonField(
                                            ApiNokiPayGroup.checkAccountCall
                                                .userData(
                                              (_model.apiCheckAccount
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            r'''$.prenom''',
                                          ).toString()} ${getJsonField(
                                            ApiNokiPayGroup.checkAccountCall
                                                .userData(
                                              (_model.apiCheckAccount
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            r'''$.nom''',
                                          ).toString()}',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    await actions.sweetNotification(
                                      context,
                                      ApiNokiPayGroup.checkAccountCall.msg(
                                        (_model.apiCheckAccount?.jsonBody ??
                                            ''),
                                      )!,
                                      'error',
                                    );
                                  }
                                }

                                setState(() {});
                              },
                        text: FFLocalizations.of(context).getText(
                          'a3q12wl3' /* Poursuivre */,
                        ),
                        options: FFButtonOptions(
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.black,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w800,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                          disabledColor: const Color(0xFFFFF2D3),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

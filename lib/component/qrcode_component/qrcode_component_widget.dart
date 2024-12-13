import '/backend/api_requests/api_calls.dart';
import '/component/merchand_pin_component/merchand_pin_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'qrcode_component_model.dart';
export 'qrcode_component_model.dart';

class QrcodeComponentWidget extends StatefulWidget {
  const QrcodeComponentWidget({
    super.key,
    required this.qrcodeVar,
  });

  final String? qrcodeVar;

  @override
  State<QrcodeComponentWidget> createState() => _QrcodeComponentWidgetState();
}

class _QrcodeComponentWidgetState extends State<QrcodeComponentWidget> {
  late QrcodeComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrcodeComponentModel());
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
        color: FlutterFlowTheme.of(context).backgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 30.0,
                  buttonSize: 44.0,
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: BarcodeWidget(
                          data: widget.qrcodeVar!,
                          barcode: Barcode.qrCode(),
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.black,
                          backgroundColor: Colors.transparent,
                          errorBuilder: (context, error) => const SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          drawText: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'e5sr70ti' /* Scanner pour recevoir ou retir... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Colors.black,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 15.0)),
                ),
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
                      var shouldSetState = false;
                      _model.qrcoscan = await FlutterBarcodeScanner.scanBarcode(
                        '#C62828', // scanning line color
                        FFLocalizations.of(context).getText(
                          'pzqptup2' /* Cancel */,
                        ), // cancel button text
                        true, // whether to show the flash icon
                        ScanMode.QR,
                      );

                      shouldSetState = true;
                      _model.objectDecrypted = await actions.decryptObject(
                        _model.qrcoscan,
                      );
                      shouldSetState = true;
                      _model.apiResult70i =
                          await ApiNokiPayGroup.getMerchantCall.call(
                        code: getJsonField(
                          _model.objectDecrypted,
                          r'''$.code''',
                        ).toString(),
                        accessToken: FFAppState().accessToken,
                      );

                      shouldSetState = true;
                      if ((_model.apiResult70i?.succeeded ?? true)) {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return WebViewAware(
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: SizedBox(
                                  height: 500.0,
                                  child: MerchandPinComponentWidget(
                                    marchand:
                                        ApiNokiPayGroup.getMerchantCall.data(
                                      (_model.apiResult70i?.jsonBody ?? ''),
                                    ),
                                    amount: getJsonField(
                                      _model.objectDecrypted,
                                      r'''$.amount''',
                                    ).toString(),
                                  ),
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));

                        if (shouldSetState) safeSetState(() {});
                        return;
                      } else {
                        await actions.sweetNotification(
                          context,
                          'error',
                          'Compte marchand introuvable',
                        );
                        if (shouldSetState) safeSetState(() {});
                        return;
                      }

                      if (shouldSetState) safeSetState(() {});
                    },
                    text: FFLocalizations.of(context).getText(
                      '66efo4g8' /* Scanner un code QR */,
                    ),
                    icon: const FaIcon(
                      FontAwesomeIcons.qrcode,
                      size: 16.0,
                    ),
                    options: FFButtonOptions(
                      width: 250.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        width: 0.3,
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

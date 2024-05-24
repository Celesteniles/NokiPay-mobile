import '/backend/api_requests/api_calls.dart';
import '/component/choose_country/choose_country_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'recharge_page_model.dart';
export 'recharge_page_model.dart';

class RechargePageWidget extends StatefulWidget {
  const RechargePageWidget({super.key});

  @override
  State<RechargePageWidget> createState() => _RechargePageWidgetState();
}

class _RechargePageWidgetState extends State<RechargePageWidget> {
  late RechargePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RechargePageModel());

    _model.amountFieldTextController ??= TextEditingController();
    _model.amountFieldFocusNode ??= FocusNode();

    _model.phoneTextController ??= TextEditingController();
    _model.phoneFocusNode ??= FocusNode();
    _model.phoneFocusNode!.addListener(() => setState(() {}));
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '3z3dj8zt' /* Recharger votre compte */,
            ),
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineSmallFamily),
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 20.0, 15.0, 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '7xseut2m' /* Montant de la recharge */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: FFAppState().currency,
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                        TextSpan(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'wu9r0qfd' /*   */,
                                          ),
                                          style: const TextStyle(),
                                        ),
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            _model
                                                .amountFieldTextController.text,
                                            '0',
                                          ),
                                          style: const TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
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
                                  SizedBox(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.amountFieldTextController,
                                      focusNode: _model.amountFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.amountFieldTextController',
                                        const Duration(milliseconds: 0),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      autofillHints: const [
                                        AutofillHints.telephoneNumber
                                      ],
                                      textCapitalization:
                                          TextCapitalization.none,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'lew3hywi' /* Montant de la recharge */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.black,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .tertiareBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                24.0, 24.0, 24.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      maxLength: 10,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .amountFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                setState(() {
                                  _model.mode = 'mobile';
                                });
                              },
                              text: FFLocalizations.of(context).getText(
                                '3cp18nyh' /* Via Mobile Money */,
                              ),
                              icon: const Icon(
                                Icons.phone_iphone,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.mode == 'mobile'
                                    ? Colors.black
                                    : Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: _model.mode == 'mobile'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.black,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                                hoverColor: Colors.black,
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                setState(() {
                                  _model.mode = 'bancaire';
                                });
                              },
                              text: FFLocalizations.of(context).getText(
                                '7luq6p77' /* Via une carte bancaire */,
                              ),
                              icon: const Icon(
                                Icons.credit_card_outlined,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.mode == 'bancaire'
                                    ? Colors.black
                                    : Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: _model.mode == 'bancaire'
                                          ? FlutterFlowTheme.of(context).primary
                                          : Colors.black,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                                hoverColor: Colors.black,
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            if (_model.mode != null && _model.mode != '')
                              Builder(
                                builder: (context) {
                                  if (_model.mode == 'mobile') {
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiareBackground,
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 3.0, 8.0, 3.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        useSafeArea: true,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    const ChooseCountryWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 36.0,
                                                      height: 36.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          functions.getCountryFlag(
                                                              FFAppState()
                                                                  .countryName),
                                                          'https://flagcdn.com/h80/cg.png',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        useSafeArea: true,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    const ChooseCountryWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions.getDialCode(
                                                            FFAppState()
                                                                .countryName),
                                                        '+242',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: TextFormField(
                                                      controller: _model
                                                          .phoneTextController,
                                                      focusNode:
                                                          _model.phoneFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.phoneTextController',
                                                        const Duration(
                                                            milliseconds: 10),
                                                        () => setState(() {}),
                                                      ),
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                        enabledBorder:
                                                            InputBorder.none,
                                                        focusedBorder:
                                                            InputBorder.none,
                                                        errorBorder:
                                                            InputBorder.none,
                                                        focusedErrorBorder:
                                                            InputBorder.none,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      maxLength: 10,
                                                      maxLengthEnforcement:
                                                          MaxLengthEnforcement
                                                              .enforced,
                                                      buildCounter: (context,
                                                              {required currentLength,
                                                              required isFocused,
                                                              maxLength}) =>
                                                          null,
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      validator: _model
                                                          .phoneTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await requestPermission(
                                                          contactsPermission);
                                                      _model.contact = await actions
                                                          .takeContactWithIndicatif();
                                                      setState(() {
                                                        FFAppState()
                                                                .countryName =
                                                            _model.contact![0];
                                                      });
                                                      setState(() {
                                                        _model.phoneTextController
                                                                ?.text =
                                                            functions
                                                                .phoneFormatter(
                                                                    _model.contact![
                                                                        2]);
                                                      });

                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.contacts_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 3.0),
                                              child: FFButtonWidget(
                                                onPressed: ((functions.veriferPhone(
                                                                _model
                                                                    .phoneTextController
                                                                    .text) ==
                                                            false) ||
                                                        (_model.amountFieldTextController
                                                                    .text ==
                                                                ''))
                                                    ? null
                                                    : () async {
                                                        await actions
                                                            .customToast(
                                                          'Traitement en cours ...',
                                                        );
                                                        _model.apiResultRecharge =
                                                            await ApiNokiPayGroup
                                                                .depotCall
                                                                .call(
                                                          payerNumber: _model
                                                              .phoneTextController
                                                              .text,
                                                          amount: _model
                                                              .amountFieldTextController
                                                              .text,
                                                          accessToken:
                                                              FFAppState()
                                                                  .accessToken,
                                                          dialCode: functions
                                                              .phoneFormatter(functions
                                                                  .getDialCode(
                                                                      FFAppState()
                                                                          .countryName)!),
                                                        );
                                                        if ((_model.apiResultRecharge
                                                                    ?.succeeded ??
                                                                true) &&
                                                            (ApiNokiPayGroup
                                                                    .depotCall
                                                                    .code(
                                                                  (_model.apiResultRecharge
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                FFAppState()
                                                                    .zero)) {
                                                          await actions
                                                              .sweetNotification(
                                                            context,
                                                            ApiNokiPayGroup
                                                                .depotCall
                                                                .msg(
                                                              (_model.apiResultRecharge
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!,
                                                            'success',
                                                          );

                                                          context
                                                              .goNamed('Home');
                                                        } else {
                                                          if (_model
                                                                  .apiResultRecharge !=
                                                              null) {
                                                            await actions
                                                                .sweetNotification(
                                                              context,
                                                              ApiNokiPayGroup
                                                                  .depotCall
                                                                  .msg(
                                                                (_model.apiResultRecharge
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!,
                                                              'error',
                                                            );
                                                          } else {
                                                            await actions
                                                                .sweetNotification(
                                                              context,
                                                              'Quelque chose ne s\'est pas bien passé',
                                                              'warning',
                                                            );
                                                          }
                                                        }

                                                        setState(() {});
                                                      },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'otg1brzo' /* RECHARGER */,
                                                ),
                                                icon: const Icon(
                                                  Icons.phone_android_outlined,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.black,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallFamily),
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    width: 0.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  disabledColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .disabledPrimaryButton,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 12.0)),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 4.0),
                                              child: FFButtonWidget(
                                                onPressed:
                                                    (_model.amountFieldTextController
                                                                    .text ==
                                                                '')
                                                        ? null
                                                        : () async {
                                                            await actions
                                                                .customToast(
                                                              'Traitement de la demande ...',
                                                            );
                                                            _model.apiResultRechargeBank =
                                                                await ApiNokiPayGroup
                                                                    .depotBankCall
                                                                    .call(
                                                              amount: _model
                                                                  .amountFieldTextController
                                                                  .text,
                                                              accessToken:
                                                                  FFAppState()
                                                                      .accessToken,
                                                            );
                                                            if ((_model.apiResultRechargeBank
                                                                        ?.succeeded ??
                                                                    true) &&
                                                                (ApiNokiPayGroup
                                                                        .depotBankCall
                                                                        .code(
                                                                      (_model.apiResultRechargeBank
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ) ==
                                                                    FFAppState()
                                                                        .zero)) {
                                                              await actions
                                                                  .sweetNotification(
                                                                context,
                                                                valueOrDefault<
                                                                    String>(
                                                                  ApiNokiPayGroup
                                                                      .depotBankCall
                                                                      .msg(
                                                                    (_model.apiResultRechargeBank
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  'Quelque chose ne s\'est pas bien passée.',
                                                                ),
                                                                'success',
                                                              );

                                                              context.goNamed(
                                                                'WebView',
                                                                queryParameters:
                                                                    {
                                                                  'link':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      (_model.apiResultRechargeBank
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.link_url''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'title':
                                                                      serializeParam(
                                                                    'Recharge via Carte bancaire',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              await actions
                                                                  .sweetNotification(
                                                                context,
                                                                valueOrDefault<
                                                                    String>(
                                                                  ApiNokiPayGroup
                                                                      .depotBankCall
                                                                      .msg(
                                                                    (_model.apiResultRechargeBank
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  'Quelque chose ne s\'est pas bien passée.',
                                                                ),
                                                                'error',
                                                              );
                                                            }

                                                            setState(() {});
                                                          },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'avf2lz4f' /* CONTINUER */,
                                                ),
                                                icon: const Icon(
                                                  Icons.credit_card,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.black,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallFamily),
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    width: 0.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  disabledColor:
                                                      const Color(0xFFFFF2D3),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 5.0)),
                                      ),
                                    );
                                  }
                                },
                              ),
                          ].divide(const SizedBox(height: 15.0)),
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
                          ),
                        ),
                      ),
                    ],
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

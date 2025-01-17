import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API NOKI PAY Group Code

class ApiNokiPayGroup {
  static String getBaseUrl({
    String? accessToken = '',
    String? apiUrl,
  }) {
    apiUrl ??= FFDevEnvironmentValues().API;
    return '$apiUrl/api/v2';
  }

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [access_token]',
    'Accept': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static VerifyOTPCall verifyOTPCall = VerifyOTPCall();
  static VerifyLoginOTPCall verifyLoginOTPCall = VerifyLoginOTPCall();
  static SendOTPCall sendOTPCall = SendOTPCall();
  static RegisterCall registerCall = RegisterCall();
  static FindTransactionCall findTransactionCall = FindTransactionCall();
  static CheckAccountCall checkAccountCall = CheckAccountCall();
  static CheckPINCall checkPINCall = CheckPINCall();
  static GetTransactionsCall getTransactionsCall = GetTransactionsCall();
  static GetContactsFetchCall getContactsFetchCall = GetContactsFetchCall();
  static GetUserCall getUserCall = GetUserCall();
  static GetContactsCall getContactsCall = GetContactsCall();
  static GetSoldeCall getSoldeCall = GetSoldeCall();
  static TransfertNokiPayCall transfertNokiPayCall = TransfertNokiPayCall();
  static DepositNokiPayCall depositNokiPayCall = DepositNokiPayCall();
  static GetFeesCall getFeesCall = GetFeesCall();
  static AddContactCall addContactCall = AddContactCall();
  static TransfertNokiPayRemittenceCall transfertNokiPayRemittenceCall =
      TransfertNokiPayRemittenceCall();
  static DepotCall depotCall = DepotCall();
  static DepotBankCall depotBankCall = DepotBankCall();
  static DepotBankVCall depotBankVCall = DepotBankVCall();
  static ResetPINCodeCall resetPINCodeCall = ResetPINCodeCall();
  static GetNewsCall getNewsCall = GetNewsCall();
  static MerchantPayCall merchantPayCall = MerchantPayCall();
  static GetMerchantCall getMerchantCall = GetMerchantCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? pin = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'phone': phone,
        'pin': pin,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic responseJson(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class VerifyOTPCall {
  Future<ApiCallResponse> call({
    String? digit = '',
    String? telephone = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Verify OTP',
      apiUrl: '$baseUrl/otp/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'digit': digit,
        'telephone': telephone,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic responseJson(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class VerifyLoginOTPCall {
  Future<ApiCallResponse> call({
    String? digit = '',
    String? phone = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Verify Login OTP',
      apiUrl: '$baseUrl/auth/otp/validate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'digit': digit,
        'phone': phone,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic responseJson(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

class SendOTPCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? dialCode = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP',
      apiUrl: '$baseUrl/otp/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'phone': phone,
        'dial_code': dialCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic responseJson(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? nom = '',
    String? prenom = '',
    String? sexe = '',
    String? mobile = '',
    String? ville = '',
    String? quartier = '',
    String? avenue = '',
    String? numeroRue = '',
    String? rue = '',
    String? pin = '',
    String? currency = 'XAF',
    String? dialCode = '',
    String? dob = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '$baseUrl/auth/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'nom': nom,
        'prenom': prenom,
        'sexe': sexe,
        'mobile': mobile,
        'ville': ville,
        'quartier': quartier,
        'avenue': avenue,
        'numero_rue': numeroRue,
        'rue': rue,
        'pin': pin,
        'currency': currency,
        'dial_code': dialCode,
        'dob': dob,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

class FindTransactionCall {
  Future<ApiCallResponse> call({
    String? transId = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Find Transaction',
      apiUrl: '$baseUrl/transactions/$transId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckAccountCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Check Account',
      apiUrl: '$baseUrl/check-account/$phone',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class CheckPINCall {
  Future<ApiCallResponse> call({
    String? pin = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Check PIN',
      apiUrl: '$baseUrl/user/check-pin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'pin': pin,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  double? solde(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.solde''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
}

class GetTransactionsCall {
  Future<ApiCallResponse> call({
    String? type = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transactions',
      apiUrl: '$baseUrl/transactions',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  List? transactionList(dynamic response) => getJsonField(
        response,
        r'''$.data.data''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetContactsFetchCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Contacts Fetch',
      apiUrl: '$baseUrl/contacts',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetUserCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get User',
      apiUrl: '$baseUrl/user',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
}

class GetContactsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Contacts',
      apiUrl: '$baseUrl/user/contacts',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetSoldeCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Solde',
      apiUrl: '$baseUrl/solde',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  double? solde(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.solde''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
}

class TransfertNokiPayCall {
  Future<ApiCallResponse> call({
    String? receiver = '',
    double? amount,
    String? pin = '',
    String? dialCode = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Transfert NokiPay',
      apiUrl: '$baseUrl/transfert-compte-a-compte',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'receiver': receiver,
        'amount': amount,
        'pin': pin,
        'dial_code': dialCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class DepositNokiPayCall {
  Future<ApiCallResponse> call({
    String? receiver = '',
    double? amount,
    String? pin = '',
    String? dialCode = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Deposit NokiPay',
      apiUrl: '$baseUrl/nokipay-deposit',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'receiver': receiver,
        'amount': amount,
        'pin': pin,
        'dial_code': dialCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class GetFeesCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? to = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Fees',
      apiUrl: '$baseUrl/transactions/get-fees',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'to': to,
        'amount': amount,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  dynamic rate(dynamic response) => getJsonField(
        response,
        r'''$.rate''',
      );
  double? majoration(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rate.majoration''',
      ));
  double? converted(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rate.converted''',
      ));
  double? totalPay(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rate.total_to_pay''',
      ));
}

class AddContactCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? mobile = '',
    String? phone = '',
    String? bankName = '',
    String? ibanBic = '',
    String? accountNumber = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Contact',
      apiUrl: '$baseUrl/contacts/store',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'name': name,
        'mobile': mobile,
        'phone': phone,
        'bank_name': bankName,
        'iban_bic': ibanBic,
        'account_number': accountNumber,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TransfertNokiPayRemittenceCall {
  Future<ApiCallResponse> call({
    String? telephone = '',
    double? amount,
    String? pin = '',
    String? dialCode = '',
    String? nom = '',
    String? prenom = '',
    String? type = '',
    String? bank = '',
    String? iban = '',
    String? bic = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Transfert NokiPay Remittence',
      apiUrl: '$baseUrl/transfert-compte-a-cash',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'telephone': telephone,
        'amount': amount,
        'pin': pin,
        'dial_code': dialCode,
        'prenom': prenom,
        'nom': nom,
        'type': type,
        'bank': bank,
        'iban': iban,
        'bic': bic,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class DepotCall {
  Future<ApiCallResponse> call({
    String? payerNumber = '',
    String? amount = '',
    String? dialCode = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Depot',
      apiUrl: '$baseUrl/depot-mobile',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'amount': amount,
        'payer_number': payerNumber,
        'dial_code': dialCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class DepotBankCall {
  Future<ApiCallResponse> call({
    String? payerNumber = '',
    String? amount = '',
    String? dialCode = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Depot Bank',
      apiUrl: '$baseUrl/depot-bank',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'amount': amount,
        'payer_number': payerNumber,
        'dial_code': dialCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class DepotBankVCall {
  Future<ApiCallResponse> call({
    String? amount = '',
    String? rechargingAccount = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Depot Bank v',
      apiUrl: '$baseUrl/visa/recharge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'amount': amount,
        'recharging_account': rechargingAccount,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
  List<String>? message(dynamic response) => (getJsonField(
        response,
        r'''$.message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class ResetPINCodeCall {
  Future<ApiCallResponse> call({
    String? oldPin = '',
    String? newPin = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Reset PIN Code',
      apiUrl: '$baseUrl/user/pin/reset',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'old_pin': oldPin,
        'new_pin': newPin,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetNewsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get News',
      apiUrl: '$baseUrl/news',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class MerchantPayCall {
  Future<ApiCallResponse> call({
    String? merchantCode = '',
    String? amount = '',
    String? pin = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Merchant Pay',
      apiUrl: '$baseUrl/merchant/payment/nokipay',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {
        'merchant_code': merchantCode,
        'amount': amount,
        'pin': pin,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? message(dynamic response) => (getJsonField(
        response,
        r'''$.message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  dynamic transactionData(dynamic response) => getJsonField(
        response,
        r'''$.transactiondata''',
      );
}

class GetMerchantCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? accessToken = '',
    String? apiUrl,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().API;
    final baseUrl = ApiNokiPayGroup.getBaseUrl(
      accessToken: accessToken,
      apiUrl: apiUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Merchant',
      apiUrl: '$baseUrl/merchant/$code/show',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? message(dynamic response) => (getJsonField(
        response,
        r'''$.message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

/// End API NOKI PAY Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

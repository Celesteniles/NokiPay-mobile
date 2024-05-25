import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_UserConnecte') != null) {
        try {
          _UserConnecte = jsonDecode(
              await secureStorage.getString('ff_UserConnecte') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _accessToken =
          await secureStorage.getString('ff_accessToken') ?? _accessToken;
    });
    await _safeInitAsync(() async {
      _zero = await secureStorage.getString('ff_zero') ?? _zero;
    });
    await _safeInitAsync(() async {
      _deuxCent = await secureStorage.getString('ff_deuxCent') ?? _deuxCent;
    });
    await _safeInitAsync(() async {
      _currency = await secureStorage.getString('ff_currency') ?? _currency;
    });
    await _safeInitAsync(() async {
      _last = await secureStorage.getBool('ff_last') ?? _last;
    });
    await _safeInitAsync(() async {
      _isBalance = await secureStorage.getBool('ff_isBalance') ?? _isBalance;
    });
    await _safeInitAsync(() async {
      _balance = await secureStorage.getDouble('ff_balance') ?? _balance;
    });
    await _safeInitAsync(() async {
      _isBlockAllow =
          await secureStorage.getBool('ff_isBlockAllow') ?? _isBlockAllow;
    });
    await _safeInitAsync(() async {
      _phone = await secureStorage.getString('ff_phone') ?? _phone;
    });
    await _safeInitAsync(() async {
      _accountBalance =
          await secureStorage.getString('ff_accountBalance') ?? _accountBalance;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  dynamic _UserConnecte;
  dynamic get UserConnecte => _UserConnecte;
  set UserConnecte(dynamic value) {
    _UserConnecte = value;
    secureStorage.setString('ff_UserConnecte', jsonEncode(value));
  }

  void deleteUserConnecte() {
    secureStorage.delete(key: 'ff_UserConnecte');
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
    secureStorage.setString('ff_accessToken', value);
  }

  void deleteAccessToken() {
    secureStorage.delete(key: 'ff_accessToken');
  }

  int _amount = 0;
  int get amount => _amount;
  set amount(int value) {
    _amount = value;
  }

  String _zero = '0';
  String get zero => _zero;
  set zero(String value) {
    _zero = value;
    secureStorage.setString('ff_zero', value);
  }

  void deleteZero() {
    secureStorage.delete(key: 'ff_zero');
  }

  String _deuxCent = '200';
  String get deuxCent => _deuxCent;
  set deuxCent(String value) {
    _deuxCent = value;
    secureStorage.setString('ff_deuxCent', value);
  }

  void deleteDeuxCent() {
    secureStorage.delete(key: 'ff_deuxCent');
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  bool _connected = false;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }

  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
  }

  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
  }

  String _countryName = 'Congo';
  String get countryName => _countryName;
  set countryName(String value) {
    _countryName = value;
  }

  String _currency = 'XAF';
  String get currency => _currency;
  set currency(String value) {
    _currency = value;
    secureStorage.setString('ff_currency', value);
  }

  void deleteCurrency() {
    secureStorage.delete(key: 'ff_currency');
  }

  bool _last = false;
  bool get last => _last;
  set last(bool value) {
    _last = value;
    secureStorage.setBool('ff_last', value);
  }

  void deleteLast() {
    secureStorage.delete(key: 'ff_last');
  }

  bool _isBalance = false;
  bool get isBalance => _isBalance;
  set isBalance(bool value) {
    _isBalance = value;
    secureStorage.setBool('ff_isBalance', value);
  }

  void deleteIsBalance() {
    secureStorage.delete(key: 'ff_isBalance');
  }

  double _balance = 0.0;
  double get balance => _balance;
  set balance(double value) {
    _balance = value;
    secureStorage.setDouble('ff_balance', value);
  }

  void deleteBalance() {
    secureStorage.delete(key: 'ff_balance');
  }

  bool _isBlockAllow = false;
  bool get isBlockAllow => _isBlockAllow;
  set isBlockAllow(bool value) {
    _isBlockAllow = value;
    secureStorage.setBool('ff_isBlockAllow', value);
  }

  void deleteIsBlockAllow() {
    secureStorage.delete(key: 'ff_isBlockAllow');
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
    secureStorage.setString('ff_phone', value);
  }

  void deletePhone() {
    secureStorage.delete(key: 'ff_phone');
  }

  String _accountBalance = '';
  String get accountBalance => _accountBalance;
  set accountBalance(String value) {
    _accountBalance = value;
    secureStorage.setString('ff_accountBalance', value);
  }

  void deleteAccountBalance() {
    secureStorage.delete(key: 'ff_accountBalance');
  }

  String _mode = 'nokipay';
  String get mode => _mode;
  set mode(String value) {
    _mode = value;
  }

  final _contactsListManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> contactsList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _contactsListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearContactsListCache() => _contactsListManager.clear();
  void clearContactsListCacheKey(String? uniqueKey) =>
      _contactsListManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}

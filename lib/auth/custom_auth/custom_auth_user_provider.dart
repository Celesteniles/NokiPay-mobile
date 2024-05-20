import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class NokiPayAuthUser {
  NokiPayAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<NokiPayAuthUser> nokiPayAuthUserSubject =
    BehaviorSubject.seeded(NokiPayAuthUser(loggedIn: false));
Stream<NokiPayAuthUser> nokiPayAuthUserStream() => nokiPayAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);

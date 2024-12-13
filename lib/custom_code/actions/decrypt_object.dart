// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;

final String aesKey = '4T7Pz9NhkK3Ls6Yy0D2Qe5W8vJ1BtX4Z'; // Clé AES-256

Future<dynamic> decryptObject(String encryptedData) async {
  print(":::::::::::::::::::DEBUT DECRYPTION:::::::::::::::::::");
  print("Données reçues: $encryptedData");

  try {
    // Créer la clé de chiffrement
    final key = encrypt.Key.fromUtf8(aesKey);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));

    // Décoder le JSON
    final Map<String, dynamic> decodedData = jsonDecode(encryptedData);

    // Racourci
    return decodedData;

    final String? ivBase64 = decodedData['iv'];
    final String? encryptedBase64 = decodedData['encrypted'];

    if (ivBase64 == null || encryptedBase64 == null) {
      throw Exception("IV ou données encryptées manquantes");
    }

    // Convertir l'IV et les données encryptées
    final iv = encrypt.IV.fromBase64(ivBase64);
    final encrypted = encrypt.Encrypted.fromBase64(encryptedBase64);

    // Déchiffrer
    final decryptedJson = encrypter.decrypt(encrypted, iv: iv);
    print("Données déchiffrées: $decryptedJson");

    // Parser le JSON
    final result = jsonDecode(decryptedJson);
    print(":::::::::::::::::::FIN DECRYPTION:::::::::::::::::::");
    return result;
  } catch (e) {
    print(":::::::::::::::::::CATCH DECRYPTION:::::::::::::::::::");
    print("Erreur lors du déchiffrement : $e");
    return null;
  }
}

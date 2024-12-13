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
import 'dart:math';
import 'package:encrypt/encrypt.dart' as encrypt;

// Clé AES-256 fixe
final String aesKey = '4T7Pz9NhkK3Ls6Yy0D2Qe5W8vJ1BtX4Z'; // 32 caractères

String encryptObject(
  String code,
  String? amount,
) {
  print(":::::::::::::::::::DEBUT ENCRYPTION:::::::::::::::::::");
  try {
    // Créer l'objet avec les paramètres
    final Map<String, dynamic> data = {'code': code, 'amount': amount};

    print("Données à encrypter: $data");

    // Convertir l'objet en JSON string
    final String jsonString = jsonEncode(data);

    // Créer la clé et l'encrypter
    final key = encrypt.Key.fromUtf8(aesKey);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));

    // Générer un IV aléatoire
    final iv = encrypt.IV.fromSecureRandom(16);

    // Encrypter les données
    final encrypted = encrypter.encrypt(jsonString, iv: iv);

    // Créer l'objet résultat avec IV et données encryptées
    final result = {'iv': iv.base64, 'encrypted': encrypted.base64};

    // Convertir en JSON
    final String encryptedJson = jsonEncode(result);
    print("Données encryptées: $encryptedJson");
    print(":::::::::::::::::::FIN ENCRYPTION:::::::::::::::::::");
    return encryptedJson;
  } catch (e) {
    print(":::::::::::::::::::CATCH ENCRYPTION:::::::::::::::::::");
    print("Erreur lors de l'encryption : $e");
    return "Relancer";
  }
}

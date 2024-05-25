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

// Fonction pour générer des octets aléatoires sécurisés
List<int> generateSecureRandomBytes(int length) {
  final secureRandom = Random.secure();
  return List<int>.generate(length, (i) => secureRandom.nextInt(256));
}

// Générer un IV unique (16 octets)
String generateIV() {
  final ivBytes = generateSecureRandomBytes(16); // 16 bytes for IV
  return base64UrlEncode(ivBytes).substring(0, 16); // Ensure 16 characters
}

dynamic decryptObject(String encryptedString) {
  // Add your function code here!
  final key = encrypt.Key.fromUtf8(aesKey);
  final encrypter = encrypt.Encrypter(encrypt.AES(key));

  // Déchiffrement de la chaîne chiffrée
  final decrypted = encrypter.decrypt64(encryptedString);

  // Conversion de la chaîne JSON déchiffrée en objet
  Map<String, dynamic> data = jsonDecode(decrypted);

  // Supprimer l'IV de l'objet
  data.remove('iv');

  // Retourner l'objet sans l'IV
  return data;
}

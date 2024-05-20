// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:contacts_service/contacts_service.dart';

Future<List<String>?> takeContactWithIndicatif() async {
  // Add your function code here!
  try {
    Contact? contact = await ContactsService.openDeviceContactPicker();
    print('Contact sélectionné : ${contact?.displayName}');

    // Récupérer le numéro de téléphone du contact
    String? phoneNumber = contact?.phones?[0].value;

    // Déclarer un tableau pour stocker le nom du pays, l'indicatif et le numéro de téléphone
    List<String> paysIndicatifNumero = ['', '', ''];

    if (phoneNumber != null && phoneNumber.isNotEmpty) {
      // Supposons que le numéro est au format international : "+1 123-456-7890"
      // Vous pouvez ajuster ce code en fonction du format de numéro que vous avez

      // Extraire l'indicatif téléphonique et le nom du pays
      if (phoneNumber.startsWith('+242')) {
        paysIndicatifNumero[0] = 'Congo'; // Pays
        paysIndicatifNumero[1] = '+242'; // Indicatif
      } else if (phoneNumber.startsWith('+243')) {
        paysIndicatifNumero[0] = 'Congo Kinshasa';
        paysIndicatifNumero[1] = '+243';
      } else if (phoneNumber.startsWith('+237')) {
        paysIndicatifNumero[0] = 'Cameroon';
        paysIndicatifNumero[1] = '+237';
      } else if (phoneNumber.startsWith('+241')) {
        paysIndicatifNumero[0] = 'Gabon';
        paysIndicatifNumero[1] = '+241';
      } else if (phoneNumber.startsWith('+223')) {
        paysIndicatifNumero[0] = 'Mali';
        paysIndicatifNumero[1] = '+223';
      } else if (phoneNumber.startsWith('+221')) {
        paysIndicatifNumero[0] = 'Senegal';
        paysIndicatifNumero[1] = '+221';
      } else if (phoneNumber.startsWith('+225')) {
        paysIndicatifNumero[0] = "Cote d'Ivoire";
        paysIndicatifNumero[1] = '+225';
      } else if (phoneNumber.startsWith('+33')) {
        paysIndicatifNumero[0] = 'France';
        paysIndicatifNumero[1] = '+33';
      } else {
        // Indicatif non reconnu
        print('Indicatif non reconnu.');
      }

      // Extraire le numéro de téléphone
      int spaceIndex = phoneNumber.indexOf(' ');
      if (spaceIndex != -1 && spaceIndex < phoneNumber.length - 1) {
        paysIndicatifNumero[2] = phoneNumber.substring(spaceIndex + 1);
      }
    }

    // Si l'indicatif téléphonique n'est pas trouvé, considérer le numéro comme local
    if (paysIndicatifNumero[1].isEmpty) {
      paysIndicatifNumero[1] =
          'Local'; // Indiquer que l'indicatif n'est pas trouvé
    }

    // Imprimer le nom du pays, l'indicatif téléphonique et le numéro de téléphone
    print('Pays : ${paysIndicatifNumero[0]}');
    print('Indicatif téléphonique : ${paysIndicatifNumero[1]}');
    print('Numéro de téléphone : ${paysIndicatifNumero[2]}');

    // Retourner le tableau contenant le nom du pays, l'indicatif téléphonique et le numéro de téléphone
    return paysIndicatifNumero;
  } catch (e) {
    print('Erreur lors de la sélection du contact : $e');
    // En cas d'erreur, retourner un tableau vide
    return ['', '', ''];
  }
}

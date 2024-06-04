import 'package:adoptacandidate/RecruiterPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:adoptacandidate/widgets/Color.dart';
import 'package:adoptacandidate/widgets/DelayAnimation.dart';
import 'CandidatePage.dart';  // Assurez-vous d'importer les pages nouvellement créées
import 'RecruiterPage.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  String? _selectedProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          Container(
            height: 90,
            child: Image.asset('images/logo.png'),
          ),
        ],
      ),
      backgroundColor: Color(0xFF0D1B2A),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'De quel profil êtes-vous ?.\nÊtes-vous un :'.tr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            RadioListTile<String>(
              activeColor: Color(0xFFFFA500),
              title: Text(
                'Candidat'.tr,
                style: TextStyle(color: Colors.white),
              ),
              value: 'Candidat',
              groupValue: _selectedProfile,
              onChanged: (String? value) {
                setState(() {
                  _selectedProfile = value;
                });
              },
            ),
            RadioListTile<String>(
              activeColor: Color(0xFFFFA500),
              title: Text(
                'Recruteur'.tr,
                style: TextStyle(color: Colors.white),
              ),
              value: 'Recruteur',
              groupValue: _selectedProfile,
              onChanged: (String? value) {
                setState(() {
                  _selectedProfile = value;
                });
              },
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight, // Aligne le bouton à droite
              child: ElevatedButton(
                onPressed: () {
                  if (_selectedProfile == 'Candidat') {
                    Get.to(CandidatePage());
                  } else if (_selectedProfile == 'Recruteur') {
                    Get.to(RecruiterPage());
                  } else {
                    // Afficher un message d'erreur ou une notification
                    Get.snackbar(
                      'Erreur'.tr,
                      'Veuillez sélectionner un profil'.tr,
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  }
                },
                child: Text(
                  'Continuer'.tr,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFA500),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: Status(),
  ));
}

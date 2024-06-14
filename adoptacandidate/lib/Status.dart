import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CandidatePage.dart';
import 'sector.dart';

class Status extends StatefulWidget {
  const Status({super.key});

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
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          SizedBox(
            height: 90,
            child: Image.asset('images/logo.png'),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF0D1B2A),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'De quel profil êtes-vous ?.\nÊtes-vous un :'.tr,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            RadioListTile<String>(
              activeColor: const Color(0xFFFFA500),
              title: Text(
                'Candidat'.tr,
                style: const TextStyle(color: Colors.white),
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
              activeColor: const Color(0xFFFFA500),
              title: Text(
                'Recruteur'.tr,
                style: const TextStyle(color: Colors.white),
              ),
              value: 'Recruteur',
              groupValue: _selectedProfile,
              onChanged: (String? value) {
                setState(() {
                  _selectedProfile = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight, // Aligne le bouton à droite
              child: ElevatedButton(
                onPressed: () {
                  if (_selectedProfile == 'Candidat') {
                    Get.to(CandidatePage());
                  } else if (_selectedProfile == 'Recruteur') {
                    Get.to( const Sector());
                  } else {
                    Get.snackbar(
                      'Erreur'.tr,
                      'Veuillez sélectionner un profil'.tr,
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFA500),
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Text(
                    'Continuer'.tr,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                    ),
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
  runApp(const GetMaterialApp(
    home: Status(),
  ));
}

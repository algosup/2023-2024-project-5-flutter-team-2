import 'package:adoptacandidate/research2.dart';

import 'research.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SoftSkills2 extends StatefulWidget {
  const SoftSkills2({super.key});

  @override
  _SoftSkills2State createState() => _SoftSkills2State();
}

class _SoftSkills2State extends State<SoftSkills2> {
  final List<String> skills = [
    "Communication".tr,
    "Travail d'équipe".tr,
    "Résolution de problèmes".tr,
    "Gestion du temps".tr,
    "Adaptabilité".tr,
    "Esprit critique".tr,
    "Créativité".tr,
    "Leadership".tr,
  ];
  Map<String, bool> selectedSkills = {};

  @override
  void initState() {
    super.initState();
    skills.forEach((skill) {
      selectedSkills[skill] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0D1B2A),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choisissez vos compétences'.tr,
              style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: skills.map((skill) {
                  return CheckboxListTile(
                    title: Text(
                      skill,
                      style: const TextStyle(color: Colors.white),
                    ),
                    value: selectedSkills[skill],
                    onChanged: (bool? value) {
                      setState(() {
                        selectedSkills[skill] = value!;
                      });
                    },
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Research2(),
                        ),
                      );
                    List<String> selected = selectedSkills.entries
                        .where((entry) => entry.value)
                        .map((entry) => entry.key)
                        .toList();
                    Get.snackbar(
                      'Compétences sélectionnées'.tr,
                      selected.isNotEmpty ? selected.join(', ') : 'Aucune sélectionnée'.tr,
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.black,
                      colorText: Colors.white,
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA500),
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        'Valider'.tr,
                        style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ), // Couleur du texte en blanc
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

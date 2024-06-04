import 'research.dart';
import 'widgets/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SoftSkills extends StatefulWidget {
  @override
  _SoftSkillsState createState() => _SoftSkillsState();
}

class _SoftSkillsState extends State<SoftSkills> {
  // Liste des compétences disponibles
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

  // Map pour suivre l'état de sélection des compétences
  Map<String, bool> selectedSkills = {};

  @override
  void initState() {
    super.initState();
    // Initialisez toutes les compétences comme non sélectionnées
    skills.forEach((skill) {
      selectedSkills[skill] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0D1B2A),
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
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: skills.map((skill) {
                  return CheckboxListTile(
                    title: Text(
                      skill,
                      style: TextStyle(color: Colors.white),
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
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(bottom: 60),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Research(),
                        ),
                        );
                    List<String> selected = selectedSkills.entries
                        .where((entry) => entry.value)
                        .map((entry) => entry.key)
                        .toList();
                    Get.snackbar(
                      'Compétences sélectionnées',
                      selected.isNotEmpty ? selected.join(', ') : 'Aucune sélectionnée',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.black,
                      colorText: Colors.white,
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFA500),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                      child: Text(
                        'Valider'.tr,
                        style: TextStyle(
                            fontSize: 18,
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

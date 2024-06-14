import 'package:adoptacandidate/NavigationPage.dart';
import 'package:adoptacandidate/RecruitersProfilePage/sector.dart';

import 'MySituation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'NavigationPage2.dart';


class Research2 extends StatelessWidget {
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
        title: Text(
          'Ma Recherche'.tr,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            height: 90,
            child: Image.asset('images/logo.png'),
          ),
        ],
      ),
      backgroundColor: Color(0xFF0D1B2A),
      body: MySearchPage2(),
      bottomNavigationBar: BottomButton(), // Ajout du bouton en bas de l'écran
    );
  }
}

class MySearchPage2 extends StatefulWidget {
  @override
  _MySearchPage2State createState() => _MySearchPage2State();
}

class _MySearchPage2State extends State<MySearchPage2> {
  String? selectedMetier;
  String? selectedLocalite;

  List<String> metiers = [
    'Développeur Full Stack'.tr,
    'Ingénieur DevOps'.tr,
    'Designer UI/UX'.tr,
    'Data Scientist'.tr,
    // Ajoutez d'autres métiers ici selon vos besoins
  ];

  List<String> localites = [
    'Paris'.tr,
    'Lyon'.tr,
    'Marseille'.tr,
    'Toulouse'.tr,
    // Ajoutez d'autres localités ici selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Métier recherché/proposé'.tr,
              style: TextStyle(color: Colors.white),
            ),
            DropdownButton<String>(
              value: selectedMetier,
              onChanged: (String? newValue) {
                setState(() {
                  selectedMetier = newValue;
                });
              },
              dropdownColor: Colors.black, // Fond du dropdown en noir
              style: TextStyle(color: Colors.white), // Texte en blanc
              items: metiers.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Localité recherchée/proposée'.tr,
              style: TextStyle(color: Colors.white),
            ),
            DropdownButton<String>(
              value: selectedLocalite,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLocalite = newValue;
                });
              },
              dropdownColor: Colors.black, // Fond du dropdown en noir
              style: TextStyle(color: Colors.white), // Texte en blanc
              items: localites.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Type(s) de contrat'.tr,
              style: TextStyle(color: Colors.white),
            ),
            ContractTypeSelector(),
          ],
        ),
      ),
    );
  }
}

class ContractTypeSelector extends StatefulWidget {
  @override
  _ContractTypeSelectorState createState() => _ContractTypeSelectorState();
}

class _ContractTypeSelectorState extends State<ContractTypeSelector> {
  Map<String, bool> contractTypes = {
    'CDI'.tr: false,
    'CDD'.tr: false,
    'Stage'.tr: false,
    'Alternance'.tr: false,
    'Intérim'.tr: false,
    'Indépendant/ Freelance'.tr: false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: contractTypes.keys.map((String key) {
        return CheckboxListTile(
          title: Text(key, style: TextStyle(color: Colors.white)),
          value: contractTypes[key],
          onChanged: (bool? value) {
            setState(() {
              contractTypes[key] = value ?? false;
            });
          },
        );
      }).toList(),
    );
  }
}

class BottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Color(0xFF0D1B2A), // Couleur de fond du bouton
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainNavigation2()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xFFFFA500), // Couleur de fond du bouton
                shadowColor: Colors.white, // Couleur du texte du bouton
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text(
                  'Valider'.tr, // Texte du bouton
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ), // Couleur du texte du bouton
                ),
              ), // Texte du bouton
            ),
          ),
        ],
      ),
    );
  }
}
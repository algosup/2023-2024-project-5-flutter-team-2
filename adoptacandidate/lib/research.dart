import 'package:adoptacandidate/MySituation.dart';
import 'package:adoptacandidate/widgets/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Research extends StatelessWidget {
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
          'Ma Recherche',
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
      body: MySearchPage(),
      bottomNavigationBar: BottomButton(), // Ajout du bouton en bas de l'écran
    );
  }
}

class MySearchPage extends StatefulWidget {
  @override
  _MySearchPageState createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  String? selectedMetier;
  String? selectedLocalite;

  List<String> metiers = [
    'Développeur Full Stack',
    'Ingénieur DevOps',
    'Designer UI/UX',
    'Data Scientist',
    // Ajoutez d'autres métiers ici selon vos besoins
  ];

  List<String> localites = [
    'Paris',
    'Lyon',
    'Marseille',
    'Toulouse',
    // Ajoutez d'autres localités ici selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'Métier recherché',
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
            'Localité recherchée',
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
            'Type(s) de contrat',
            style: TextStyle(color: Colors.white),
          ),
          ContractTypeSelector(),
        ],
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
    'CDI': false,
    'CDD': false,
    'Stage': false,
    'Alternance': false,
    'Intérim': false,
    'Indépendant/ Freelance': false,
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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => MySituation()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:yellow, // Couleur de fond du bouton
              shadowColor: Colors.white, // Couleur du texte du bouton
            ),
            child: Text(
              'Mon Bouton',
              style: TextStyle(color: Colors.white), // Couleur du texte du bouton
            ), // Texte du bouton
          ),
        ],
      ),
    );
  }
}
import 'package:adoptacandidate/research.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SoftSkills extends StatefulWidget {
  @override
  _SoftSkillsState createState() => _SoftSkillsState();
}

class _SoftSkillsState extends State<SoftSkills> {
  List<String> selectedSkills = [];
  List<String> suggestedSkills = [
    'Gestion du temps',
    'Empathie',
    'Prise de décision',
    'Travail d\'équipe',
    'Communication',
    'Résolution de problèmes',
    'Créativité',
    'Adaptabilité',
    'Leadership',
    'Esprit critique',
    'Gestion du stress',
    'Planification et organisation',
    'Écoute active',
    'Confiance en soi',
    'Respect de la diversité',
    'Esprit d\'initiative',
    'Collaboration',
    'Persévérance',
    'Esprit d\'équipe',
    'Flexibilité',
    'Fiabilité',
    'Motivation',
    'Sens de l\'écoute',
    'Capacité à apprendre',
    'Capacité d\'analyse',
    'Gestion des conflits',
    'Leadership de groupe',
    'Esprit d\'entreprise',
    'Sens des responsabilités',
    'Sens de l\'organisation',
    'Autonomie',
    'Vision stratégique',
    'Résilience',
    'Ouverture d\'esprit',
    'Travail sous pression',
    'Persuasion',
    'Coaching',
    'Innovation',
    'Diplomatie',
    'Communication interpersonnelle',
    'Gestion de projet',
    'Planification',
    'Capacité à prendre des initiatives',
    'Orientation client',
    'Orientation résultats',
    'Sens de l\'engagement',
    'Orientation vers les objectifs',
    'Analyse des besoins',
    'Esprit d\'entreprise',
  ];

  void toggleSkill(String skill) {
    setState(() {
      if (selectedSkills.contains(skill)) {
        selectedSkills.remove(skill);
      } else {
        if (selectedSkills.length < 30) {
          selectedSkills.insert(0, skill); // Ajoute la compétence en haut de la liste
        } else {
          // Affiche une alerte si la limite de sélection est atteinte
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Limite atteinte'),
                content: Text('Vous avez atteint la limite de sélection de 30 compétences.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      }
    });
  }

  bool areEnoughSkillsSelected() {
    return selectedSkills.length >= 5;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Compétences Sélectionnées (${selectedSkills.length}/30)',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: selectedSkills.map((skill) {
                  return FilterChip(
                    label: Text(
                      skill,
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Color(0xFFFFB500),
                    selected: selectedSkills.contains(skill),
                    onSelected: (_) {
                      toggleSkill(skill);
                    },
                    selectedColor: Color(0xFFFFB500),
                    checkmarkColor: Colors.white,
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text(
                'Compétences Suggérées',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: suggestedSkills.map((skill) {
                  return ActionChip(
                    label: Text(
                      skill,
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      toggleSkill(skill);
                    },
                    backgroundColor: selectedSkills.contains(skill)
                        ? Colors.transparent
                        : Colors.grey[700],
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: areEnoughSkillsSelected()
                      ? () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Research(),
                            ),
                          );
                        }
                      : () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Sélection Insuffisante'),
                                content: Text('Veuillez sélectionner au moins 5 compétences.'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                  child: Text(
                    areEnoughSkillsSelected() ? 'Sauvegarder' : 'Sauvegarder (Au moins 5 compétences)',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: areEnoughSkillsSelected() ? Color(0xFFFFB500) : Colors.grey[600],
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

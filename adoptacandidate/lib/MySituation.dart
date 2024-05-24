import 'package:adoptacandidate/SwipePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MySituation(),
    );
  }
}

class MySituationController extends GetxController {
  var selectedJobs = <String>[].obs;
  var isEmployed = false.obs;
  var isAvailableImmediately = false.obs;
  var selectedExperience = ''.obs;
  var selectedQualification = ''.obs;

  void toggleEmploymentStatus() {
    isEmployed.value = !isEmployed.value;
  }

  void toggleAvailabilityStatus() {
    isAvailableImmediately.value = !isAvailableImmediately.value;
  }

  void addJob(String job) {
    if (selectedJobs.length < 3) {
      selectedJobs.add(job);
    }
  }

  void saveSituation() {
    // Implémenter la logique de sauvegarde ici
  }
}

class MySituation extends StatelessWidget {
  final MySituationController controller = Get.put(MySituationController());

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
          'Ma Situation',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Métier(s) recherché(s) (3 choix max)',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                isExpanded: true,
                items: <String>['Développeur', 'Ingénieur', 'Designer', 'Analyste'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.white)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    controller.addJob(newValue);
                  }
                },
                dropdownColor: Color(0xFF1C3A59),
                style: TextStyle(color: Colors.white),
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                underline: Container(
                  height: 2,
                  color: Colors.white,
                ),
                value: null,
              ),
              SizedBox(height: 20),
              Text(
                'Métiers sélectionnés:',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Obx(() => Text(
                '${controller.selectedJobs}',
                style: TextStyle(color: Colors.white),
              )),
              SizedBox(height: 20),
              Text(
                'Situation actuelle',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => ToggleButtons(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('En poste', style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Sans emploi', style: TextStyle(color: Colors.white)),
                  ),
                ],
                isSelected: [controller.isEmployed.value, !controller.isEmployed.value],
                onPressed: (int index) {
                  controller.toggleEmploymentStatus();
                },
                color: Colors.white,
                selectedColor: Colors.white,
                fillColor: Color(0xFF1C3A59),
                borderColor: Color(0xFF1C3A59),
                borderRadius: BorderRadius.circular(8.0),
              )),
              SizedBox(height: 20),
              Text(
                'Disponibilité',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => ToggleButtons(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Immédiate', style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('À convenir', style: TextStyle(color: Colors.white)),
                  ),
                ],
                isSelected: [controller.isAvailableImmediately.value, !controller.isAvailableImmediately.value],
                onPressed: (int index) {
                  controller.toggleAvailabilityStatus();
                },
                color: Colors.white,
                selectedColor: Colors.white,
                fillColor: Color(0xFF1C3A59),
                borderColor: Color(0xFF1C3A59),
                borderRadius: BorderRadius.circular(8.0),
              )),
              SizedBox(height: 20),
              Text(
                "Niveau d'expérience",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => DropdownButton<String>(
                isExpanded: true,
                items: <String>['Junior', 'Intermédiaire', 'Senior'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.white)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    controller.selectedExperience.value = newValue;
                  }
                },
                dropdownColor: Color(0xFF1C3A59),
                style: TextStyle(color: Colors.white),
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                underline: Container(
                  height: 2,
                  color: Colors.white,
                ),
                value: controller.selectedExperience.value.isEmpty ? null : controller.selectedExperience.value,
              )),
              SizedBox(height: 20),
              Text(
                'Niveau de qualification',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => DropdownButton<String>(
                isExpanded: true,
                items: <String>['Bac', 'Bac+2', 'Bac+3', 'Bac+5'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.white)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    controller.selectedQualification.value = newValue;
                  }
                },
                dropdownColor: Color(0xFF1C3A59),
                style: TextStyle(color: Colors.white),
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                underline: Container(
                  height: 2,
                  color: Colors.white,
                ),
                value: controller.selectedQualification.value.isEmpty ? null : controller.selectedQualification.value,
              )),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => SwipePage()));
                    controller.saveSituation();
                  },
                  child: Text(
                    'Enregistrer',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1C3A59),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
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

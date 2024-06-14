import 'package:adoptacandidate/NavigationPage.dart';

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
          icon: Icon(
              Icons.arrow_back,
              color: Colors.white30,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Ma Situation'.tr,
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
                'Métier(s) recherché(s) (3 choix max)'.tr,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                isExpanded: true,
                items: <String>['Développeur'.tr, 'Ingénieur'.tr, 'Designer'.tr, 'Analyste'.tr].map((String value) {
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
                icon: Icon(Icons.arrow_forward, color: Colors.white30),
                underline: Container(
                  height: 2,
                  color: Colors.white30,
                ),
                value: null,
              ),
              SizedBox(height: 20),
              Text(
                'Métiers sélectionnés:'.tr,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Obx(() => Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: controller.selectedJobs.map((String job) {
                  return GestureDetector(
                    onTap: () {
                      controller.selectedJobs.remove(job);
                    },
                    child: Chip(
                      label: Text(
                        job,
                        style: TextStyle(color: Color(0xFFFFA500)),
                      ),
                    ),
                  );
                }).toList(),
              )),
              SizedBox(height: 20),
              Text(
                'Situation actuelle'.tr,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => ToggleButtons(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'En poste'.tr,
                        style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'Sans emploi'.tr,
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
                isSelected: [controller.isEmployed.value, !controller.isEmployed.value],
                onPressed: (int index) {
                  controller.toggleEmploymentStatus();
                },
                color: Colors.white,
                selectedColor: Colors.white,
                fillColor: Color(0xFFFFA500),
                borderColor: Color(0xFF1C3A59),
                borderRadius: BorderRadius.circular(8.0),
              )),
              SizedBox(height: 20),
              Text(
                'Disponibilité'.tr,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => ToggleButtons(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'Immédiate'.tr,
                        style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        'À convenir'.tr,
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
                isSelected: [controller.isAvailableImmediately.value, !controller.isAvailableImmediately.value],
                onPressed: (int index) {
                  controller.toggleAvailabilityStatus();
                },
                color: Colors.white,
                selectedColor: Colors.white,
                fillColor: Color(0xFFFFA500),
                borderColor: Color(0xFF1C3A59),
                borderRadius: BorderRadius.circular(8.0),
              )),
              SizedBox(height: 20),
              Text(
                "Niveau d'expérience".tr,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => DropdownButton<String>(
                isExpanded: true,
                items: <String>['Junior'.tr, 'Intermédiaire'.tr, 'Senior'.tr].map((String value) {
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
                icon: Icon(Icons.arrow_forward, color: Colors.white30),
                underline: Container(
                  height: 2,
                  color: Colors.white30,
                ),
                value: controller.selectedExperience.value.isEmpty ? null : controller.selectedExperience.value,
              )),
              SizedBox(height: 20),
              Text(
                'Niveau de qualification'.tr,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Obx(() => DropdownButton<String>(
                isExpanded: true,
                items: <String>['Bac'.tr, 'Bac+2'.tr, 'Bac+3'.tr, 'Bac+5'.tr].map((String value) {
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
                icon: Icon(Icons.arrow_forward, color: Colors.white30),
                underline: Container(
                  height: 2,
                  color: Colors.white30,
                ),
                value: controller.selectedQualification.value.isEmpty ? null : controller.selectedQualification.value,
              )),
              SizedBox(height: 20),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => MainNavigation()));
                      controller.saveSituation();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFA500),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        'Enregistrer'.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                        ),
                      ),
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

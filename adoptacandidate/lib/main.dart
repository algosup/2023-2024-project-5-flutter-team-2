import 'package:adoptacandidate/widgets/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'WelcomePage.dart';
import 'package:adoptacandidate/widgets/language.dart';

void main(){
  runApp(AdoptACandidate());
}

class AdoptACandidate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Language(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('fr', 'FR'),
      title: 'Adopt A Candidate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: WelcomePage(),
    );
  }
}

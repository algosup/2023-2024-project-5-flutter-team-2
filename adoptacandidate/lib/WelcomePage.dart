import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginPage.dart';


class WelcomePage extends StatelessWidget {

  bool isSwitched = false;

  WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          DropdownButton(
            icon: const Icon(Icons.language, color: Colors.white),
            underline: const SizedBox(),
            items: const [
              DropdownMenuItem(
                value: 'en Us',
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: 'fr FR',
                child: Text('Français'),
              ),            ],
            onChanged: (value) {
               Get.updateLocale(Locale(value.toString()));
            },
          ),
          const SizedBox(width: 20),
          SizedBox(
            height: 60,
            child: Image.asset('images/logo.png'),
          ),
       ],
      ),

      backgroundColor: const Color(0xFF0D1B2A),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo en haut à gauche

              const SizedBox(height: 20),

              // Centrer les autres éléments
              Center(
                child: Column(
                  children: [
                    // Images circulaires autour
                    SizedBox(
                      height: 250,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('images/3dhand.png', width: 220, height: 220),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Texte "Bienvenue sur Adopte 1 Candidat"
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: const Color(0xFF0D1B2A),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bienvenue Sur'.tr,
                            style: GoogleFonts.smoochSans(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 0.9,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                'Adopte'.tr,
                                style: GoogleFonts.smoochSans(
                                  fontSize: 60,
                                  color: const Color(0xFFFFA500),
                                  fontWeight: FontWeight.bold,
                                  height: 0.9,
                                ),
                              ),
                              const SizedBox(width: 7),
                              Text(
                                '1',
                                style: GoogleFonts.smoochSans(
                                  fontSize: 60,
                                  color: const Color(0xFF808080),
                                  fontWeight: FontWeight.bold,
                                  height: 0.9,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Candidat'.tr,
                            style: GoogleFonts.smoochSans(
                              fontSize: 60,
                              color: const Color(0xFFFFA500),
                              fontWeight: FontWeight.bold,
                              height: 0.9,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Inscrivez-vous gratuitement ou connectez-vous'.tr,
                            style: GoogleFonts.roboto(
                              fontSize: 13,
                              color: Colors.white,
                              height: 0.9,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Bouton "Continuer avec un email"
                    ElevatedButton(
                      onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                           builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFFA500),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 70,
                          ),
                        ),
                      ),

                      //language Continuer avec un email
                      child: Text(
                        'Continuer avec un email'.tr,
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Texte "ou"
                    Text(
                      'ou'.tr,
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        color: Colors.white,
                        height: 0.9,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Boutons des réseaux sociaux
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Logique de connexion Google
                          },
                          icon: SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/google.png'),
                          ),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Logique de connexion Apple
                          },
                          icon: SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/apple.png'),
                          ),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Logique de connexion Facebook
                          },
                          icon: SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/facebook.png'),
                          ),
                          iconSize: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem buildDropItem(String language, String value) {
    return DropdownMenuItem(
      child: Text(
         language,
         style: const TextStyle(),
      ),
    );
  }
}
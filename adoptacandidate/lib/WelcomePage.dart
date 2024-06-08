import 'LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';


class WelcomePage extends StatelessWidget {

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          DropdownButton(
            icon: Icon(Icons.language, color: Colors.white),
            underline: SizedBox(),
            items: [
              DropdownMenuItem(
                child: Text('English'),
                value: 'en Us',
              ),
              DropdownMenuItem(
                child: Text('Français'),
                value: 'fr FR',
              ),            ],
            onChanged: (value) {
               Get.updateLocale(Locale(value.toString()));
            },
          ),
          SizedBox(width: 20),
          Container(
            height: 60,
            child: Image.asset('images/logo.png'),
          ),
       ],
      ),

      backgroundColor: Color(0xFF0D1B2A),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo en haut à gauche

              SizedBox(height: 20),

              // Centrer les autres éléments
              Center(
                child: Column(
                  children: [
                    // Images circulaires autour
                    Container(
                      height: 250,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('images/3dhand.png', width: 220, height: 220),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    // Texte "Bienvenue sur Adopte 1 Candidat"
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Color(0xFF0D1B2A),
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
                                  color: Color(0xFFFFA500),
                                  fontWeight: FontWeight.bold,
                                  height: 0.9,
                                ),
                              ),
                              SizedBox(width: 7),
                              Text(
                                '1',
                                style: GoogleFonts.smoochSans(
                                  fontSize: 60,
                                  color: Color(0xFF808080),
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
                              color: Color(0xFFFFA500),
                              fontWeight: FontWeight.bold,
                              height: 0.9,
                            ),
                          ),
                          SizedBox(height: 10),
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

                    SizedBox(height: 20),

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

                      //language Continuer avec un email
                      child: Text(
                        'Continuer avec un email'.tr,
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFFFFA500),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 70,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // Texte "ou"
                    Text(
                      'ou'.tr,
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        color: Colors.white,
                        height: 0.9,
                      ),
                    ),

                    SizedBox(height: 20),

                    // Boutons des réseaux sociaux
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Logique de connexion Google
                          },
                          icon: Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/google.png'),
                          ),
                          iconSize: 40,
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Logique de connexion Apple
                          },
                          icon: Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/apple.png'),
                          ),
                          iconSize: 40,
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Logique de connexion Facebook
                          },
                          icon: Container(
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
         style: TextStyle(),
      ),
    );
  }
}
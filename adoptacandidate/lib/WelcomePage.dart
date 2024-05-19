import 'package:adoptacandidate/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:adoptacandidate/widgets/language.dart';

class WelcomePage extends StatelessWidget {
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
             Container(
                height: 90,
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
                            'welcome'.tr,
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
                                'adopt'.tr,
                                style: GoogleFonts.smoochSans(
                                  fontSize: 60,
                                  color: Color(0xFFFFA500),
                                  fontWeight: FontWeight.bold,
                                  height: 0.9,
                                ),
                              ),
                              Text(
                                '1',
                                style: GoogleFonts.smoochSans(
                                  fontSize: 60,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 0.9,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'candidate'.tr,
                            style: GoogleFonts.smoochSans(
                              fontSize: 60,
                              color: Color(0xFFFFB500),
                              fontWeight: FontWeight.bold,
                              height: 0.9,
                            ),
                          ),
                          Text(
                            'connection'.tr,
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
                      child: Text(
                        'email'.tr,
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFFFFB500),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 40,
                          ),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 20),
                    
                    // Texte "ou"
                    Text(
                      'choice'.tr,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
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
                            width: 50.0,
                            height: 50.0,
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
                            width: 50.0,
                            height: 50.0,
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
                            width: 50.0,
                            height: 50.0,
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
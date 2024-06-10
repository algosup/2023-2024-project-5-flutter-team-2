import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
            'Paramètres'.tr,
            style: GoogleFonts.roboto(
                color: Colors.white,
            ),
        ),
        backgroundColor: Color(0xFF0D1B2A),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),

      ),
      backgroundColor: Color(0xFF0D1B2A),
      body: Container(
        padding: const EdgeInsets.all(10.0),
          child: ListView(
            controller: scrollController,
            children: [
              buildSettingsTopic(context, "Gestion des abonnements".tr),
              SizedBox(height: 15),

                Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                    buildSettings(context, "Gestion des notifications".tr),
                  ],
                ),
                Divider(
                  color: Colors.white30,
                  height: 20,
                  thickness: 1,
                ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  buildSettings(context, "Gestion des abonnements emails".tr),
                ],
              ),
              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 25),
              buildSettingsTopic(context, "Sécurité et aides".tr),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                  buildSettings(context, "Modification mot de passe".tr),
                ],
              ),
              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  buildSettings(context, "Conditions générales d'utilisation".tr),
                ],
              ),
              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.cookie_outlined,
                    color: Colors.white,
                  ),
                  buildSettings(context, "Gestion des cookies".tr),
                ],
              ),
              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.white,
                  ),
                  buildSettings(context, "Politique de confidentialité".tr),
                ],
              ),
              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                  buildSettings(context, "Signalr un problème".tr),
                ],
              ),
              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 25),
              buildSettingsTopic(context, "Autres".tr),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                  buildSettings(context, "Donner mon avis sur l'application".tr),
                ],
              ),
              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.file_download_outlined,
                    color: Colors.white30,
                  ),
                  buildSettings(context, "L'application est à jour".tr),
                ],
              ),

              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Color(0xFFFFA500),
                  ),
                  buildSettings(context, "Déconnexion".tr),
                ],
              ),

              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(
                    Icons.delete_forever_outlined,
                    color: Colors.red,
                  ),
                  buildSettings(context, "Supprimer mon compte".tr),
                ],
              ),

              Divider(
                color: Colors.white30,
                height: 20,
                thickness: 1,
              ),

              //SizedBox(height: 10),

            ],
        ),
      ),
    );
  }



  GestureDetector buildSettings (BuildContext context, String title){
    return GestureDetector(
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildSettingsTopic (BuildContext context, String title){
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

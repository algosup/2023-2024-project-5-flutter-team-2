import 'package:adoptacandidate/WelcomePage.dart';
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
            const SizedBox(height: 15),

            Row(
              children: [
                const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                buildSettings(context, "Gestion des notifications".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                buildSettings(context, "Gestion des abonnements emails".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 25),
            buildSettingsTopic(context, "Sécurité et aides".tr),
            const SizedBox(height: 15),

            Row(
              children: [
                const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                buildSettings(context, "Modification mot de passe".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                buildSettings(context, "Conditions générales d'utilisation".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(
                  Icons.cookie_outlined,
                  color: Colors.white,
                ),
                buildSettings(context, "Gestion des cookies".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.white,
                ),
                buildSettings(context, "Politique de confidentialité".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(
                  Icons.error,
                  color: Colors.white,
                ),
                buildSettings(context, "Signaler un problème".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 25),
            buildSettingsTopic(context, "Autres".tr),
            const SizedBox(height: 15),

            Row(
              children: [
                const Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
                buildSettings(context, "Donner mon avis sur l'application".tr),
              ],
            ),
            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(
                  Icons.file_download_outlined,
                  color: Colors.white30,
                ),
                buildSettings(context, "L'application est à jour".tr),
              ],
            ),

            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                Get.to(WelcomePage());
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.logout_outlined,
                    color: Color(0xFFFFA500),
                  ),
                  buildSettings(context, "Déconnexion".tr),
                ],
              ),
            ),

            const Divider(
              color: Colors.white30,
              height: 20,
              thickness: 1,
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(
                  Icons.delete_forever_outlined,
                  color: Colors.red,
                ),

                buildSettings(context, "Supprimer mon compte".tr),
              ],
            ),

            const Divider(
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
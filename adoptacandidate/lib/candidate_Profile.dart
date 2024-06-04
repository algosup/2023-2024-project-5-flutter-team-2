import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CandidateProfile extends StatelessWidget {
  const CandidateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            Image.asset(
              'images/logo.png',
              height: 50,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF0D1B2A),
      body: const Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Icon(
                        Icons.person_pin,
                        size: 150,
                        color: Colors.white,
                      ),
                      Text(
                        'Bonjour GADIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Ingénieur Informatique',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                    flex:
                        2), // Adjust the flex value to control the space above the containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileBox(text: 'Ma recherche', icon: Icons.saved_search_rounded,),
                    ProfileBox(text: 'Ma situation', icon: Icons.location_on,),
                  ],
                ),
                Spacer(flex:2), // Adjust the flex value to control the space below the containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileBox(text: 'Mes competences', icon: Icons.fact_check,),
                    ProfileBox(text: 'Ma situation', icon: Icons.info,),
                  ],
                ),
                Spacer(flex:5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileBox extends StatelessWidget {
  final String text;
  final IconData icon;

  const ProfileBox({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 60,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CandidateProfile extends StatelessWidget {
  const CandidateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        leading: const BackButton(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/logo.png',
              height: 60,
              alignment: Alignment.centerLeft,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 40,
              ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person_pin,
                      size: 140,
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

                Spacer(
                    flex:
                        4), // Adjust the flex value to control the space above the containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileBox(
                      text: 'Ma recherche',
                      icon: Icons.saved_search_rounded,
                    ),
                    ProfileBox(
                      text: 'Ma situation',
                      icon: Icons.location_on,
                    ),
                  ],
                ),
                Spacer(
                    flex:
                        1), // Adjust the flex value to control the space below the containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileBox(
                      text: 'Mes competences',
                      icon: Icons.fact_check,
                    ),
                    ProfileBox(
                      text: 'Mes infos persos',
                      icon: Icons.info,
                    ),
                  ],
                ),
                Spacer(flex: 5),
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
        color: Colors.grey,
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

import 'package:adoptacandidate/MySituation.dart';
import 'package:adoptacandidate/research.dart';
import 'package:adoptacandidate/softskills.dart';
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
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Column(
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

                const Spacer(
                    flex:
                        4), // Adjust the flex value to control the space above the containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileIconButton(
                      text: 'Ma recherche',
                      icon: Icons.saved_search_rounded,
                      onPressed: () {
                        // Add profile button action
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                     const Research()));
                      },
                    ),
                    ProfileIconButton(
                      text: 'Ma situation',
                      icon: Icons.location_on,
                      onPressed: () {
                        // Add profile button action
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                     MySituation()));
                      },
                    ),
                  ],
                ),
                const Spacer(
                    flex:
                        1), // Adjust the flex value to control the space below the containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileIconButton(
                      text: 'Mes competences',
                      icon: Icons.fact_check,
                      onPressed: () {
                        // Add profile button action
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                     SoftSkills()));
                      },
                    ),
                    ProfileIconButton(
                      text: 'Mes infos persos',
                      icon: Icons.info,
                      onPressed: () {
                        print('Mes infos persos');
                      },
                    ),
                  ],
                ),
                const Spacer(flex: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ProfileIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const ProfileIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero, // Remove default padding
        backgroundColor: Colors.grey, // Background color
        foregroundColor: Colors.black, // Foreground color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        fixedSize: const Size(150, 100), // Fixed size for the button
        elevation: 5, // Adds some elevation to the button
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60,
          ),
          const SizedBox(height: 10), // Spacing between icon and text
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
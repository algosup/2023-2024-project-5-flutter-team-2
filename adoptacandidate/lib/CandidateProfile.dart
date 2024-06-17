import 'package:adoptacandidate/NavigationPage.dart';
import 'package:adoptacandidate/SettingsPage.dart';
import 'package:adoptacandidate/widgets/DelayAnimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CandidateProfilPage/CandidatesInfo.dart';
import 'CandidateProfilPage/research.dart';
import 'CandidateProfilPage/situation.dart';
import 'CandidateProfilPage/skills.dart';

class Candidateprofile extends StatefulWidget {
  const Candidateprofile({super.key});

  @override
  State<Candidateprofile> createState() => _CandidateprofileState();
}

class _CandidateprofileState extends State<Candidateprofile> {
  late final Profile profile;
  late final String texte;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profile = const Profile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DelayedAnimation(
              delay: 150,
              child: Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5),
                child: IconButton(
                  icon:
                      const Icon(Icons.settings_outlined, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Settings(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        leading: DelayedAnimation(
          delay: 150,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Get.to(const MainNavigation());
            },
          ),
        ),
      ),
      backgroundColor: const Color(0xFF0D1B2A),
      body: SingleChildScrollView(
        child: DelayedAnimation(
          delay: 15,
          child: Column(
            children: [
              Container(
                child: const Profile(),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    profileCandidate(
                      title: "Ma recherhe".tr,
                      icon: const Icon(
                        Icons.search_rounded,
                        size: 45,
                        color: Colors.white,
                      ),
                      onPressedCallback: () {
                        Get.to(ResearchCandidate());
                      },
                    ),
                    const SizedBox(width: 15),
                    profileCandidate(
                      title: "Ma Situation".tr,
                      icon: const Icon(
                        Icons.access_time_rounded,
                        size: 45,
                        color: Colors.white,
                      ),
                      onPressedCallback: () {
                        Get.to(
                          Situations(),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    profileCandidate(
                      title: "Mes Compétences".tr,
                      icon: const Icon(
                        Icons.dataset,
                        size: 34,
                        color: Colors.white,
                      ),
                      onPressedCallback: () {
                        Get.to(const Skills());
                      },
                    ),
                    const SizedBox(width: 15),
                    profileCandidate(
                      title: "Mes Infos".tr,
                      icon: const Icon(
                        Icons.perm_device_info_outlined,
                        size: 45,
                        color: Colors.white,
                      ),
                      onPressedCallback: () {
                        Get.to(const CandidatesInfo());
                      },
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
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        color: Colors.grey[700],
        height: 350,
        child: Center(
          child: Container(
            //margin: EdgeInsets.only(bottom: 100),
            child:  Column(
              children: [
                Icon(
                  Icons.person_pin,
                  color: Colors.white,
                  size: 150,
                ),
                Text(
                  'Bonjour [Nom de l\'utilisateur]'.tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Domaine de l\'utilisateur'.tr,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class profileCandidate extends StatefulWidget {
  final String title;
  final Icon icon;
  final VoidCallback onPressedCallback;
  const profileCandidate(
      {super.key,
      required this.onPressedCallback,
      required this.icon,
      required this.title});

  @override
  State<profileCandidate> createState() => _profileCandidateState();
}

class _profileCandidateState extends State<profileCandidate> {
  double down = 3.0;
  double right = 3.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, right, down),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30.0),
        ),
        duration: const Duration(microseconds: 500),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 110,
          width: 160,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey[700],
              foregroundColor: Colors.white,
            ),
            onPressed: widget.onPressedCallback,
            child: Column(
              children: [
                widget.icon,
                const SizedBox(height: 2),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 13),
                ),
                //widget.onPressedCallback;
              ],
            ),
          ),
        ),
      ),
    );
  }
}


  

import 'package:adoptacandidate/NavigationPage.dart';
import 'package:adoptacandidate/RecruitersProfilePage/sector.dart';
import 'package:adoptacandidate/SettingsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'RecruitersProfilePage/RecruitersInfo.dart';
import 'RecruitersProfilePage/research.dart';
import 'RecruitersProfilePage/skills.dart';
import 'package:adoptacandidate/widgets/DelayAnimation.dart';

import 'SwipePage.dart';


class Recruitersprofile extends StatefulWidget {
  const Recruitersprofile({super.key});

  @override
  State<Recruitersprofile> createState() => _RecruitersprofileState();
}

class _RecruitersprofileState extends State<Recruitersprofile> {

  late final Profile profile;
  late final String texte;

  @override
  void initState() {
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
                margin: EdgeInsets.only(left: 5),
                child: IconButton(
                  icon: Icon(Icons.settings_outlined, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
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
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Get.to(MainNavigation());
            },
          ),
        ),

      ),
      backgroundColor: Color(0xFF0D1B2A),
      body: DelayedAnimation(
        delay: 15,
        child: Column(
          children: [
            Container(
              child: Profile(),
            ),

            Container(
              margin:EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  profileCandidate(
                    title: "Ma recherhe".tr,
                    icon: Icon(
                      Icons.search_rounded,
                      size: 60,
                      color: Colors.white,
                    ), onPressedCallback: () {
                    Get.to(ResearchCandidate());
                  },
                  ),
                  SizedBox(width: 15),
                  profileCandidate(
                    title: "Mon Secteur".tr,
                    icon: Icon(
                      Icons.access_time_rounded,
                      size: 60,
                      color: Colors.white,
                    ), onPressedCallback: () {
                    Get.to(
                      Sector(),
                    );
                  },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin:EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  profileCandidate(
                    title: "Mes Compétences".tr,
                    icon: Icon(
                      Icons.dataset,
                      size: 60,
                      color: Colors.white,
                    ), onPressedCallback: () {
                    Get.to(Skills());
                  },
                  ),
                  SizedBox(width: 15),

                  profileCandidate(
                    title: "Mes Infos".tr,
                    icon: Icon(
                      Icons.perm_device_info_outlined,
                      size: 60,
                      color: Colors.white,
                    ),
                    onPressedCallback: () {
                      Get.to(RecruiterInfoPage());
                    },
                  ),
                ],
              ),
            ),

          ],
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
      child: Container(
        color: Colors.grey[700],
        height: 350,
        child: Center(
          child: Container(
            //margin: EdgeInsets.only(bottom: 100),
            child: Column(
              children: [
                Icon(
                  Icons.person_pin,
                  color: Colors.white,
                  size: 150,
                ),
                Text(
                  'Bonjour [Nom de l\'entreprise]'.tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Domain de l\'entreprise'.tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      clipper: MyCustomClipper(),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height/2);
    path.quadraticBezierTo(
        size.width/2, size.height, size.width, size.height/2
    );
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
  const profileCandidate({Key? key, required this.onPressedCallback, required this.icon, required this.title}) :
        super(key: key);

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
        padding:  EdgeInsets.fromLTRB(0.0, 0.0, right, down),
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
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 120,
          width: 180,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey[700],
              foregroundColor: Colors.white,
            ),
            onPressed: widget.onPressedCallback,
            child: Column(
              children: [
                widget.icon,
                SizedBox(height: 2),
                Text(widget.title),
                //widget.onPressedCallback;
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//Container profileCandidate (BuildContext, String title, Icon icon){



import 'package:adoptacandidate/RecruiterPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Sector extends StatefulWidget {
  const Sector({super.key});

  @override
  State<Sector> createState() => _SectorState();
}

class _SectorState extends State<Sector> {
  bool click = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  bool click5 = true;


  final List<String> sectors = [
    'Primaire'.tr,
    'Secondaire'.tr,
    'Tertiaire'.tr,
    'Quaternaire'.tr,
    'Quinaire'.tr,
  ];

  Map<String, bool> selectedSectors = {};

  @override
  void initState() {
    super.initState();
    for (var sector in sectors) {
      selectedSectors[sector] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0D1B2A),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          Container(
            height: 90,
            child: Image.asset('images/logo.png'),
          ),
        ],
      ),

      backgroundColor: Color(0xFF0D1B2A),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child:  Text(
              'Votre Secteur D\'activités ?'.tr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  click = !click;
                  if(click == false)
                    selectedSectors[sectors[0]] = true;
                  else
                    selectedSectors[sectors[0]] = false;
                });
              },
              child: ListTile(
                title: Text(
                  sectors[0],
                  style: TextStyle(
                    color: (click == false) ?  Colors.black : Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Des industries telles que l\'agriculture, la pêche, la foresterie et l\'exploitation minière.'.tr,
                  style: TextStyle(
                      color: (click == false) ?  Colors.black : Colors.grey,
                      fontSize: 11
                  ),
                ),
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: (click == true) ?  Color.fromRGBO(255, 255, 255, 0.2) : Colors.green,
                padding: EdgeInsets.fromLTRB(18, 5, 0, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  click2 = !click2;
                  if(click2 == false)
                    selectedSectors[sectors[1]] = true;
                  else
                    selectedSectors[sectors[1]] = false;
                });
              },
              child: ListTile(
                title: Text(
                  sectors[1],
                  style: TextStyle(
                    color: (click2 == false) ?  Colors.black : Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Industries telles que la fabrication, la construction et la production industrielle.'.tr,
                  style: TextStyle(
                      color: (click2 == false) ?  Colors.black : Colors.grey,
                      fontSize: 11
                  ),
                ),
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: (click2 == true) ?  Color.fromRGBO(255, 255, 255, 0.2) : Colors.blue,
                padding: EdgeInsets.fromLTRB(18, 5, 0, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  click3 = !click3;
                  if(click3 == false)
                    selectedSectors[sectors[2]] = true;
                  else
                    selectedSectors[sectors[2]] = false;
                });
              },
              child: ListTile(
                title: Text(
                  sectors[2],
                  style: TextStyle(
                    color: (click3 == false) ?  Colors.black : Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Des secteurs tels que la vente au détail, les transports, les services financiers, l’éducation, la santé et l’hôtellerie.'.tr,
                  style: TextStyle(
                      color: (click3 == false) ?  Colors.black : Colors.grey,
                      fontSize: 11
                  ),
                ),
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: (click3 == true) ?  Color.fromRGBO(255, 255, 255, 0.2) : Colors.yellow,
                padding: EdgeInsets.fromLTRB(18, 5, 0, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  click4 = !click4;
                  if(click4 == false)
                    selectedSectors[sectors[3]] = true;
                  else
                    selectedSectors[sectors[3]] = false;
                });
              },
              child: ListTile(
                title: Text(
                  sectors[3],
                  style: TextStyle(
                    color: (click4 == false) ?  Colors.black : Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Industries telles que le développement, les technologies de l’information, le conseil et d’autres services intellectuels.'.tr,
                  style: TextStyle(
                      color: (click4 == false) ?  Colors.black : Colors.grey,
                      fontSize: 11
                  ),
                ),
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: (click4 == true) ?  Color.fromRGBO(255, 255, 255, 0.2) : Colors.purple,
                padding: EdgeInsets.fromLTRB(18, 5, 0, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  click5 = !click5;
                  if(click5 == false)
                    selectedSectors[sectors[4]] = true;
                  else
                    selectedSectors[sectors[4]] = false;
                });
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: (click5 == true) ?  Color.fromRGBO(255, 255, 255, 0.2) : Color(0xFFFFD700),
                padding: EdgeInsets.fromLTRB(18, 5, 0, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: ListTile(
                title: Text(
                  sectors[4],
                  style: TextStyle(
                    color: (click5 == false) ?  Colors.black : Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Ce secteur est sur les rôles de gestion et de prise de décision de haut niveau essentiels pour l’économie mondiale.'.tr,
                  style: TextStyle(
                      color: (click5 == false) ?  Colors.black : Colors.grey,
                      fontSize: 11
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 50),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecruiterPage(),
                  ),
                );

                List<String> Selected = selectedSectors.entries
                    .where((entry) => entry.value)
                    .map((entry) => entry.key)
                    .toList();
                Get.snackbar(
                  'Secteur(s) sélectionné(s)'.tr,
                  Selected.isNotEmpty ? Selected.join(', ') : 'Aucun secteur sélectionné'.tr,
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.black,
                  colorText: Colors.white,
                );
              },
              child: Text(
                'Continuer'.tr,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFA500),
                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

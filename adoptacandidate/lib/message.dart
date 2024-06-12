import 'package:adoptacandidate/ChatPage.dart';
import 'package:adoptacandidate/NavigationPage.dart';
import 'package:adoptacandidate/SwipePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MessageSystem extends StatefulWidget {
  const MessageSystem({super.key});

  @override
  State<MessageSystem> createState() => _MessageSystemState();
}

class _MessageSystemState extends State<MessageSystem> {
  List<String> profileImages = [
    "images/profile.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/9.jpg",
    "images/10.jpg",
    "images/11.jpg",
    "images/12.jpg",
    "images/13.jpg",
    "images/14.jpg",
    "images/15.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1B2A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Center(
                child: Text(
                  'Nom de L\'utisateur',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),

        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("images/2.jpg"),
        ),

      ),
      backgroundColor: Color(0xFF0D1B2A),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (String val){
                        setState(() {
                          val;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.white,),
                        labelText: 'Search'.tr,
                        labelStyle: TextStyle(color: Colors.grey[400]),
                        filled: true,
                        fillColor: Colors.grey[700],
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Text(
                  'Matchs',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  15,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:  const AssetImage(
                                "images/color.jpg",
                            ),
                            child: CircleAvatar(
                              radius: 30.5,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Nom de profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ),
            const Divider(
              height: 20,
              thickness: 1,
              color: Colors.grey,
            ),

             InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => chatPage()),
                );
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Actif il y a 13 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                   SizedBox(height: 10),
                   ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Peut on se voir ?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                   SizedBox(height: 10),
                   ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Actif il y a 2 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Actif il y a 40 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Actif il y a 1 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),

                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: Text(
                      "Actif il y a 10 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Actif il y a 20 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Votre profile m'interesse, salut....",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Salut 👋 ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Actif il y a 1 an",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
                  ),

                  SizedBox(height: 10),
                  const ListTile(
                    title: Text(
                      "Nom de profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Actif il y a 2 minutes",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/2.jpg"),
                    ),
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

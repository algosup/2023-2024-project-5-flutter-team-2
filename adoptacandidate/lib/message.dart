import 'package:adoptacandidate/SwipePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


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
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 0){
        var route = MaterialPageRoute(builder: (BuildContext  context) => SwipePage());
        Navigator.of(context).push(route);
      }
      else if(_selectedIndex == 1){
        var route = MaterialPageRoute(builder: (BuildContext context) => MessageSystem());
        Navigator.of(context).push(route);
      }
    });
  }

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

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Get.to(SwipePage());
          },
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
            Column(
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

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  15,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            profileImages[index],
                        ),
                      ),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                height: 30,
                'images/convert.svg'
            ),
            label: 'Swap',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                height: 30,
                'images/message.svg'),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                height: 30,
                'images/Notification.svg'),
            label: 'Notification',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFFFA500),
        onTap: _onItemTapped,
      ),
    );
  }
}

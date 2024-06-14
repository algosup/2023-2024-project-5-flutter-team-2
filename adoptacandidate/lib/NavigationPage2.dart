import 'package:adoptacandidate/SwipePage2.dart';
import 'package:adoptacandidate/message.dart';
import 'package:adoptacandidate/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'SwipePage.dart';

class MainNavigation2 extends StatefulWidget {
  const MainNavigation2({super.key});

  @override
  State<MainNavigation2> createState() => _MainNavigation2State();
}

class _MainNavigation2State extends State<MainNavigation2> {
  PageController _pageController = PageController();

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    SwipePage2(),
    MessageSystem(),
    NotificationsPage(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int i) {
    _pageController.jumpToPage(i);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFFFA500),
        onTap: _onItemTapped,
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
          ),
        ],
      ),
    );
  }
}

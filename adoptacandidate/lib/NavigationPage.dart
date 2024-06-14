import 'package:adoptacandidate/message.dart';
import 'package:adoptacandidate/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SwipePage.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const SwipePage(),
    const MessageSystem(),
    const NotificationsPage(),
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
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFFA500),
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

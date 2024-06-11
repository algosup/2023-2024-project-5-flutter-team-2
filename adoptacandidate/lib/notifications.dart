import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  int likeNumber = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SizedBox(
          width: 260,
          child: Center(
            child: Image.asset(
              'images/logo.png',
              width: 60,
              height: 60,
            ),
          ),
        ),
        // Optionally, you can add other widgets like actions, leading, etc.
      ),
      backgroundColor: const Color(0xFF0D1B2A),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '30 Likes',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Envoyer',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Favoris',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}

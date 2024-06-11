import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: SizedBox(
        height: 150,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/logo.png', width: 120, height: 120),
          ],
        ),
      ),
    ));
  }
}

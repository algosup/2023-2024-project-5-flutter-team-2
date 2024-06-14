import 'package:adoptacandidate/CandidateProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NotificationsPage(),
    );
  }
}

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  // Initial filter states
  bool showLikes = false;
  bool showSent = false;
  bool showFavorites = false;

  // Sample list of notifications
  final List<NotificationCard> notificationList = [
    NotificationCard(
      chosenText: 'Like-Sent-Fav'.tr,
      isLike: true,
      isSent: true,
      isFavorite: true,
    ),
     NotificationCard(
      chosenText: 'Like-Sent-Fav'.tr,
      isLike: true,
      isSent: true,
      isFavorite: true,
    ),
     NotificationCard(
      chosenText: 'Like-Sent.tr'.tr,
      isLike: true,
      isSent: true,
      isFavorite: false,
    ),
    NotificationCard(
      chosenText: 'Sent-Fav'.tr,
      isLike: false,
      isSent: true,
      isFavorite: true,
    ),
     NotificationCard(
      chosenText: 'Like-Fav'.tr,
      isLike: true,
      isSent: false,
      isFavorite: true,
    ),
     NotificationCard(
      chosenText: 'Like'.tr,
      isLike: true,
      isSent: false,
      isFavorite: false,
    ),
     NotificationCard(
      chosenText: 'Sent'.tr,
      isLike: false,
      isSent: true,
      isFavorite: false,
    ),
     NotificationCard(
      chosenText: 'Fav'.tr,
      isLike: false,
      isSent: false,
      isFavorite: true,
    ),
  ];

  // Filter the notification list based on the current filter settings
  List<NotificationCard> getFilteredNotifications() {
    return notificationList.where((notification) {
      if (showLikes && !notification.isLike) return false;
      if (showSent && !notification.isSent) return false;
      if (showFavorites && !notification.isFavorite) return false;
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // Get the filtered list of notifications
    List<NotificationCard> filteredNotifications = getFilteredNotifications();

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
      ),
      backgroundColor: const Color(0xFF0D1B2A),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Wrap(
                spacing: 70.0,
                children: [
                  FilterChip(
                    label:  Text('Likes'.tr),
                    selected: showLikes,
                    onSelected: (bool selected) {
                      setState(() {
                        showLikes = selected;
                      });
                    },
                  ),

                  FilterChip(
                    label:  Text('Envoyer'.tr),
                    selected: showSent,
                    onSelected: (bool selected) {
                      setState(() {
                        showSent = selected;
                      });
                    },
                  ),
                  FilterChip(
                    label:  Text("Favoris".tr),
                    selected: showFavorites,
                    onSelected: (bool selected) {
                      setState(() {
                        showFavorites = selected;
                      });
                    },
                  ),
                ],
              ),
            ),
            // Flexible to ensure it takes the remaining space
            Flexible(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75, // Adjust to your desired aspect ratio
                ),
                itemCount: filteredNotifications.length,
                itemBuilder: (context, index) {
                  return filteredNotifications[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String chosenText;
  final bool isLike;
  final bool isSent;
  final bool isFavorite;

  const NotificationCard({
    super.key,
    required this.chosenText,
    required this.isLike,
    required this.isSent,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        width: 150,
        height: 200,
        child: Center(
          child: Text(
            chosenText,
            style: const TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CandidateProfile extends StatelessWidget {
  const CandidateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFF0D1B2A),
    );
  }
}

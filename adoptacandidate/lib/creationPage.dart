import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:adoptacandidate/widgets/Color.dart';
import 'package:adoptacandidate/widgets/DelayAnimation.dart';
import 'package:adoptacandidate/widgets/language.dart';

class creationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
    );
  }
}
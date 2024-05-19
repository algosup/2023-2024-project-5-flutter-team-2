import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:adoptacandidate/widgets/Color.dart';
import 'package:adoptacandidate/widgets/DelayAnimation.dart';
import 'package:adoptacandidate/widgets/language.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Your Email',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              
            ],
        ),
      ),
    ),
    );
  }
}

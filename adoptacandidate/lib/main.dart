import 'package:flutter/material.dart';
import 'WelcomePage.dart';

void main(){
  runApp(AdoptACandidate());
}

class AdoptACandidate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adopt A Candidate',
      debugShowCheckedModeBanner: false,
      home: WelcomPage(),
    );
  }
}

import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';


class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Bonjour, comment allez-vous?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),

        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(left: 80, top: 20),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.2, 3),
                      //end: Alignment.bottomCenter,
                      colors: <Color>[Color(0xFFFFA500), Color(0xFF616161)]),
                ),
                child: Text(
                  'Je me porte très bien Mr et vous? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

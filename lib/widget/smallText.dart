import 'package:flutter/material.dart';

class Smalltext extends StatelessWidget {
   final String text;
   final Color color;
   double size;
   Smalltext({super.key,this.size=15, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
         fontSize: size
      ),
    );
  }
}
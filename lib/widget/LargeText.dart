import 'package:flutter/material.dart';

class Largetext extends StatelessWidget {
  final String text;
  final Color color;
  double size;
   Largetext({super.key,this.size = 3, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: size
    ),);
  }
}
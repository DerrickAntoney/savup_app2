import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {

  final String text;
  Color color = Colors.black;
  double size = 30.0;
  AppLargeText(
      {super.key, required this.text, required this.color,  required this.size});


  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold
    ),);
  }
}

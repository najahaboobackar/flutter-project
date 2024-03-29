import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color ?color;
  final String text;
  double size;
  TextOverflow overFlow;
   BigText({super.key, this.color=const Color(0xFF332d2b), required this.text, this.overFlow=TextOverflow.ellipsis,this.size=20});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    overflow: overFlow,
    style: TextStyle(
      fontFamily: 'Roboto',
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w400,
    ),);
  }
}
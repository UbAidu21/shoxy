import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  AppText({
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.letterSpacig,
    this.textOverflow,
    Key? key,
  }) : super(key: key);

  String text;
  Color? color;
  FontWeight? fontWeight;
  double? fontSize;
  double? letterSpacig;
  TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacig,
          overflow: textOverflow),
    );
  }
}

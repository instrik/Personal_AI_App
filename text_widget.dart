import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    required this.label,
    this.fontSize = 15,
    this.color,
    this.fontWeight,
  });
  final String label;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}

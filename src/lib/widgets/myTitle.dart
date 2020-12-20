import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
    Key key,
    this.text,
    this.padding = const EdgeInsets.only(bottom: 24.0),
    this.textColor = const Color(0xFFC9C9C9),
    this.fontSize = 32.0,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  final String text;
  final EdgeInsets padding;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      child: Text(
        this.text,
        style: TextStyle(
          color: this.textColor,
          fontSize: this.fontSize,
          fontWeight: this.fontWeight,
        ),
      ),
    );
  }
}

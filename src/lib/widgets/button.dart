import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    this.text,
    this.onPressed,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(0),
    this.borderRadius = 25.0,
    this.borderColor = const Color(0xFF000000),
    this.fontSize = 18.0,
    this.bgColor = const Color(0xFF282828),
    this.textColor = const Color(0xFFC4C4C4),
  }) : super(key: key);

  final String text;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Function onPressed;
  final double borderRadius;
  final Color borderColor;
  final double fontSize;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: this.margin,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: this.borderColor),
        ),
        color: this.bgColor,
        padding: this.padding,
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: this.fontSize,
            color: this.textColor,
          ),
        ),
        onPressed: this.onPressed,
      ),
    );
  }
}

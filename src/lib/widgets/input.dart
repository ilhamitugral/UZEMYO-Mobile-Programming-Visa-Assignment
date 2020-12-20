import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    this.text = "",
    this.margin = const EdgeInsets.all(0.0),
    this.bgColor = const Color(0xFF363636),
    this.focusBorderColor = const Color(0xFF000000),
    this.textColor = const Color(0xFFFFFFFF),
    this.labelColor = const Color(0xFF999999),
    this.borderRadius = 25.0,
    this.onSaved,
    this.obSecureText = false,
  }) : super(key: key);

  final String text;
  final EdgeInsets margin;
  final Color bgColor;
  final Color focusBorderColor;
  final Color textColor;
  final double borderRadius;
  final Color labelColor;
  final Function onSaved;
  final bool obSecureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      decoration: BoxDecoration(
        color: this.bgColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextFormField(
        obscureText: this.obSecureText,
        style: TextStyle(
          color: this.textColor,
          decorationColor: this.bgColor,
        ),
        onSaved: this.onSaved,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusBorderColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusBorderColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          labelText: this.text,
          labelStyle: TextStyle(
            color: this.labelColor,
          ),
        ),
      ),
    );
  }
}

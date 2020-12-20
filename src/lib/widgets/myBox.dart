import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({
    Key key,
    this.number,
    this.bgColor = Colors.transparent,
  }) : super(key: key);

  final int number;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          color: this.bgColor,
          border: Border.all(),
        ),
        child: Text(
          this.number.toString(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

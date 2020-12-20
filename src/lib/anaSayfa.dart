import 'package:flutter/material.dart';

import 'package:visa/config.dart';

import 'package:visa/widgets/all.widgets.dart';

class HomePage extends StatelessWidget {
  int x = 5;
  int y = 4;

  @override
  Widget build(BuildContext context) {
    List<Widget> column = this.grid();

    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          children: column,
        ),
      ),
    );
  }

  List<Widget> grid() {
    List<Widget> column = [];
    List<Widget> row = [];
    List<int> numbers = this.calculateNumbers();

    Color color;

    int count = 1;

    for (int i = 0; i < this.x; i++) {
      for (int j = 0; j < this.y; j++) {
        if (numbers.indexWhere((number) => number == count) > -1) {
          color = activeColor;
        } else {
          color = Colors.transparent;
        }

        row.add(
          MyBox(
            bgColor: color,
            number: count,
          ),
        );
        count++;
      }
      column.add(
        Expanded(
          child: Row(
            children: row,
          ),
        ),
      );
      row = [];
    }
    return column;
  }

  List<int> calculateNumbers() {
    List<int> numbers = [];

    String _schoolNumber = schoolNumber.toString();
    int number = 0;
    int sum = 0;

    for (int i = 0; i < _schoolNumber.length; i++) {
      number = int.parse(_schoolNumber[i]);
      if (!numbers.contains(number)) {
        numbers.add(number);
      }
      sum += number;
    }

    sum %= 20;

    sum = sum < 10 ? sum + 10 : sum;

    if (!numbers.contains(sum)) numbers.add(sum);
    if (!numbers.contains(sum - 1)) numbers.add(sum - 1);
    if (!numbers.contains(sum + 1)) numbers.add(sum + 1);

    return numbers;
  }
}

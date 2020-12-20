import 'package:flutter/material.dart';
import 'package:visa/config.dart';
import 'package:visa/widgets/all.widgets.dart';

class LostPassword extends StatefulWidget {
  @override
  LostPasswordState createState() => LostPasswordState();
}

class LostPasswordState extends State<LostPassword> {
  @override
  final GlobalKey<FormState> _valuesKey = GlobalKey<FormState>();

  String _email = "";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: contentPadding,
            child: Form(
              key: _valuesKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(
                      inputMarginSize,
                    ),
                  ),
                  MyTitle(
                    text: 'Şifremi Unuttum',
                  ),
                  Input(
                    text: 'E-Posta adresi',
                    margin: EdgeInsets.only(bottom: inputMarginSize),
                    onSaved: (value) {
                      _email = value;
                    },
                  ),
                  Button(
                    text: 'Gönder',
                    onPressed: () {
                      _valuesKey.currentState.save();
                      debugPrint('Eposta adresi: $_email');
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

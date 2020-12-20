import 'package:flutter/material.dart';

import 'package:visa/config.dart';

import 'package:visa/widgets/all.widgets.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _valuesKey = GlobalKey<FormState>();

  String _email;
  String _username;
  String _password;
  String _repassword;

  @override
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
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(
                      inputMarginSize,
                    ),
                  ),
                  MyTitle(
                    text: 'Üye Ol',
                  ),
                  Input(
                    margin: EdgeInsets.only(bottom: inputMarginSize),
                    text: 'Email',
                    onSaved: (value) {
                      _email = value;
                    },
                  ),
                  Input(
                    margin: EdgeInsets.only(bottom: inputMarginSize),
                    text: 'Kullanıcı Adı',
                    onSaved: (value) {
                      _username = value;
                    },
                  ),
                  Input(
                    margin: EdgeInsets.only(bottom: inputMarginSize),
                    text: 'Şifre',
                    onSaved: (value) {
                      _password = value;
                    },
                    obSecureText: true,
                  ),
                  Input(
                    margin: EdgeInsets.only(bottom: inputMarginSize),
                    text: 'Şifre Tekrar',
                    onSaved: (value) {
                      _repassword = value;
                    },
                    obSecureText: true,
                  ),
                  Button(
                    margin: EdgeInsets.only(bottom: inputMarginSize),
                    text: 'Vazgeç',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Button(
                    text: 'Kaydol',
                    onPressed: () {
                      _valuesKey.currentState.save();
                      debugPrint(
                          'E-posta: $_email, Kullanıcı Adı: $_username, Şifre: $_password, Şifre Tekrar: $_repassword');

                      if (_password == _repassword) {
                        Navigator.pop(context);
                      }
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

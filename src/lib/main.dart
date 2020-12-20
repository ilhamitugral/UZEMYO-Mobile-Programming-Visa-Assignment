import 'package:flutter/material.dart';

import 'package:visa/sifremiUnuttum.dart';
import 'package:visa/uyeOl.dart';
import 'package:visa/anaSayfa.dart';

import 'package:visa/widgets/all.widgets.dart';

import 'package:visa/config.dart';

void main() {
  runApp(VisaApp());
}

class VisaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: pages['login'],
      routes: {
        pages['login']: (context) => LoginPage(),
        pages['lostpassword']: (context) => LostPassword(),
        pages['register']: (context) => RegisterPage(),
        pages['homepage']: (context) => HomePage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String _username = "";
  String _password = "";

  final GlobalKey<FormState> _valuesKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          padding: contentPadding,
          child: Form(
            key: _valuesKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyTitle(
                  text: 'Giriş Yap',
                ),
                Input(
                  margin: EdgeInsets.only(bottom: inputMarginSize),
                  text: 'Kullanıcı Adı',
                  onSaved: (value) {
                    this._username = value;
                  },
                ),
                Input(
                  margin: EdgeInsets.only(bottom: inputMarginSize),
                  text: 'Şifre',
                  onSaved: (value) {
                    this._password = value;
                  },
                  obSecureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MaterialButton(
                      child: Text(
                        "Üye Ol",
                        style: TextStyle(color: textColor, fontSize: 18.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, pages['register']);
                      },
                    ),
                    MaterialButton(
                      child: Text(
                        "Şifremi Unuttum",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, pages['lostpassword']);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 32.0,
                    bottom: 16.0,
                  ),
                ),
                Button(
                  text: 'Giriş Yap',
                  onPressed: () {
                    _valuesKey.currentState.save();

                    if (this._username == adminUsername &&
                        this._password == adminPassword) {
                      Navigator.pushNamed(context, pages['homepage']);
                    } else {
                      debugPrint('Kullanıcı adı veya şifre hatalı.');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

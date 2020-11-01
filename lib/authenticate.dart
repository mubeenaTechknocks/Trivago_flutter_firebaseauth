import 'package:flutter/material.dart';
import 'package:trivago/register.dart';
import 'package:trivago/signin.dart';

class athenticate extends StatefulWidget {
  @override
  _athenticateState createState() => _athenticateState();
}

class _athenticateState extends State<athenticate> {
  bool showsSignIn = true;
  void toogleView() {
    setState(() {
      showsSignIn = !showsSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showsSignIn) {
      return SignIn(toogleView: toogleView);
    } else {
      return Register(toogleView: toogleView);
    }
  }
}

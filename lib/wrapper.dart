import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivago/navigation.dart';
import 'package:trivago/authenticate.dart';
import "package:trivago/models/user.dart";

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Usercustom>(context);

    if (user == null) {
      return athenticate();
    } else {
      return navigation();
    }
  }
}

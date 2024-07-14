import 'package:amazon_clone/Pages/account_beforeSignIn.dart';
import 'package:flutter/material.dart';
import 'account_afterSignIn.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Account extends StatelessWidget {
  Account({Key? key}) : super(key: key);

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var user = auth.currentUser;
    return user == null ? account_beforeSignIn() : Account_afterSignIn();
  }
}

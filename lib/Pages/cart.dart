import 'package:amazon_clone/Pages/cart_afterSignIn.dart';
import 'package:amazon_clone/Pages/cart_before_Sign_In.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  cart({Key? key}) : super(key: key);

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var user = auth.currentUser;
    return user == null ? Cart_before_Sign_In(): Cart_after_SignIn();
  }
}
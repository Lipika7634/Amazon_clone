import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';

class SignInPassword extends StatefulWidget {
  final String email;
  const SignInPassword({required this.email});

  @override
  State<SignInPassword> createState() => _SignInPasswordState();
}

class _SignInPasswordState extends State<SignInPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    IconData icon = Icons.check_box_outline_blank;
    bool hide = true;
    void toggle(){
      setState(() {
        hide = !hide;
        if (hide) {
          icon = Icons.check_box_outline_blank;
        } else {
          icon = Icons.check_box_outlined;
        }
      });
    }
    void submit(){
      setState(() {
        // Go to hacker_out page
      });
    }
    return Scaffold(
      appBar: signInAppBar(),
      body: Container(
        child: Column(
          children: [
            Text('Sign in', style: TextStyle(fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.email}'),
                link('Change', false, (){Navigator.pop(context);}),
              ],
            ),
            password_form(hide, password),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ElevatedButton(onPressed: (){toggle();}, 
                      child: Icon(icon),
                      style: design(),
                    ),
                  ],
                ),
                link('Forgot password?', false, (){}),
              ],
            ),
            Button('Sign in', () {}),
            notice(),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';

class Sign_2 extends StatefulWidget {
  final String email;
  Sign_2({required this.email});

  @override
  State<Sign_2> createState() => _Sign_2State();
}

class _Sign_2State extends State<Sign_2> {
  IconData icon = Icons.check_box_outline_blank;
  bool hide = true;
  void toggle(bool hide){
    setState(() {
      if (hide) {
        icon = Icons.check_box_outline_blank;
      } else {
        icon = Icons.check_box_outlined;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    TextEditingController t1 = TextEditingController();
    return Scaffold(
      appBar: signInAppBar(),
      body: Container(
        child: Column(
          children: [
            Text('Sign In'),
            Container(
              width: w*0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${widget.email}'),
                  link('Change', false, () { })
                ],
              ),
            ),
            TextFormField(
              controller: t1,
              decoration: InputDecoration(hintText: 'Amazon Password'),
              obscureText: hide,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(children: [
                Icon(icon),
                Text('Show Password'),]),
                ),
                link('Forgot password?', false, () { }),
              ],
            ),
            Button('Sign In', () { }),
            line(context),
            notice(),
          ],
        ),
      ),
    );
  }
}
import 'package:amazon_clone/SignInPages/verification.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'OTP.dart';

class hacker_out extends StatefulWidget {
  final String phone;
  hacker_out({required this.phone});

  @override
  State<hacker_out> createState() => _hacker_outState();
}

class _hacker_outState extends State<hacker_out> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: signInAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.only(top: 12, bottom: 60, left: 10, right: 10),
                height: h*0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Keep hackers out', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('Add a mobile number. If there is an unusual sign-in, we can text you and verify that it is really you'),
                    Container(
                      width: w*0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${widget.phone}'),
                          link('Change', false, () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => verification(email: ''),));
                          }),
                        ],
                      ),
                    ),
                    Text('To verify your number, we will send you a text message with a temporary code. Message and data rates may apply.'),
                    Button('Get OTP', () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OTP_Screen(phone: widget.phone),));
                    }),
                    Wrap(
                      children: [
                        Text('By continuing, you agree to Amazon\'s '),
                        link('Conditions of Use', true, () { }),
                        Text(' and '),
                        link('Privacy Notice', true, () { }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            notice(),
          ],
        ),
      ),
    );
  }
}
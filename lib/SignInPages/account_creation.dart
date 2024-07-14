import 'package:amazon_clone/SignInPages/Sign_In.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/SignInPages/hacker_out.dart';

class create_account extends StatefulWidget {
  final String phone;
  create_account({required this.phone});

  @override
  State<create_account> createState() => _create_accountState();
}

class _create_accountState extends State<create_account> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: signInAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            height: h*0.5,
            child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Create a new account with the same number?', style: TextStyle(fontSize: 20),),
                    Container(
                      width: w*0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${widget.phone}'),
                          link('Change', false, () {Navigator.pop(context);})
                        ],
                      ),
                    ),
                    Text('We will remove this phone number from the existing account'),
                    Text('The existing account will be accessible only with the linked email'),
                    Button('Create your Amazon account', () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => hacker_out(phone: widget.phone),));
                    }),
                    Align(
                      alignment: Alignment.center,
                      child: link('Sign in with another email or mobile', false, () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          SizedBox(height: 45,),
          notice(),
        ],
      ),
    );
  }
}
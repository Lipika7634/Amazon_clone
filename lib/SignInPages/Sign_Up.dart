import 'package:amazon_clone/SignInPages/Sign_In.dart';
import 'package:amazon_clone/SignInPages/verification.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';

class Sign_Up extends StatefulWidget {
  final String email;
  const Sign_Up({required this.email});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: signInAppBar(),
      body: Container(
        height: h*0.4,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Looks like you are new to Amazon', style: Theme.of(context).textTheme.headline6,),
          Container(
            width: w*0.8,
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.email}'),
                link('Change', false, (){Navigator.pop(context);}),
              ],
            ),
          ),
          Text('Let\'s create an account using your mobile number',),
          Row(
            children: [
              Expanded(child: Button('Procced to create an account', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => verification(email: widget.email,),));
              })),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 1, 
            width: MediaQuery.of(context).size.width, color: Colors.grey.shade400.withOpacity(0.8),),
          Text('Already a customer?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          SizedBox(height: 17,),
          link('Sign in with another email or mobile', false, (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
          }),
        ],
      ),
    ),
    );
  }
}
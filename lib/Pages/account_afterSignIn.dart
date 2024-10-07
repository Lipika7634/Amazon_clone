import 'package:amazon_clone/Screens/sellScreen.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/main.dart';
import 'package:amazon_clone/utilities/constant.dart';
import 'package:amazon_clone/utilities/theme.dart';
import 'package:amazon_clone/utilities/utility.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/account_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:amazon_clone/Model/userDetails.dart';
import 'package:amazon_clone/Provider/userDetailsProvider.dart';

class Account_afterSignIn extends StatefulWidget {
  const Account_afterSignIn({Key? key}) : super(key: key);

  @override
  State<Account_afterSignIn> createState() => Aaccount_afterSignInState();
}

class Aaccount_afterSignInState extends State<Account_afterSignIn> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
  UserDetailsModel userDetails = Provider.of<UserDetailsProvider>(context).userDetails;
    Size size = getScreenSize();
    return Scaffold(
      appBar: account_app_bar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            TextButton(
              onPressed: (){},
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: greycolor,
                    child: Icon(Icons.person_outline, color: Colors.white,),
                  ),
                  SizedBox(width: 2,),
                  Text(' Hello, ${userDetails.name} ▼', style: TextStyle(fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 150,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 70,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 19
                ), 
                itemBuilder: (context, index) {
                  return TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(greycolor.withOpacity(0.1),),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(70), side: BorderSide(color: greycolor)))
                    ),
                    onPressed: (){},
                    child: Container(
                      width: size.width/2.4,
                      child: Center(child: Text(choices[index], style: TextStyle(color: Colors.black),)),
                    ),
                  );
                },
              ),
            ),
            account_widget('Your', 'Hi! You have no recent orders.', 'Return to the HomePage', () { 
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(),));
            }),
            Divider(thickness: 6,),
            // history search
            account_widget('Buy', 'See what others are reordering on Buy Again', 'Visit Buy Again', () { }),
            Divider(thickness: 6,),
            account_widget('Your', 'You haven\'t created any lists', 'Create a List', () { }),
            Divider(thickness: 6,),
            Container(
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your', style: TextStyle(fontSize: 18),),
                        link('See all', false, () { })
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: options.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: greycolor),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextButton(onPressed: (){}, child: Text(options[index], style: TextStyle(color: Colors.black),)));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 10,),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(child: rounded_button('Sell', () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SellScreen(),));
                }))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: rounded_button('Log Out', () {
                    auth.signOut().then((value){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(),));
                    }).onError((error, stackTrace){
                      message(error.toString(), Colors.red);
                    });
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
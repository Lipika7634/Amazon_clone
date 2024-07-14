import 'package:amazon_clone/SignInPages/Sign_In.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';

class account_beforeSignIn extends StatefulWidget {
  const account_beforeSignIn({Key? key}) : super(key: key);

  @override
  State<account_beforeSignIn> createState() => _personalState();
}

class _personalState extends State<account_beforeSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: account_app_bar(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hello'),
                  ElevatedButton(
                    onPressed: () {},
                    style: design(),
                    child: Row(
                      children: [
                        Icon(Icons.flag, color: Colors.black),
                        Text('EN', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text('Welcome to Amazon', style: TextStyle(fontSize: 20)),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade800),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.yellow.shade800.withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                          },
                          child: Text('Create account', style: TextStyle(color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                          },
                          child: Text('Sign in', style: TextStyle(color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('Buying for work? '),
                link('Create a free business account', false, () {})
              ],
            ),
            Container(
              height: 300,
              child: ListView(
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(image: NetworkImage(listIcons[i]), width: 50),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              list[i],
                              style: TextStyle(fontSize: 15),
                              maxLines: null,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

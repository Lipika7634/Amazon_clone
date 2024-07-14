import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/main.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signInAppBar(),
      body: Container(
        child: Column(
          children: [
            Text('Important information about customer- service messages', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('We sometimes need to send you important messages, such as warranty certificates, product recalls or account policy updates.'),
            Text('You can view these messages at any time by tapping Message Centre in the menu of this app.'),
            Text('We will also send you a notification each time you receive a new message.'),
            Button('Continue Shopping', () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(),));
            }),
          ],
        ),
      ),
    );
  }
}
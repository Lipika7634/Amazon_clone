import 'package:amazon_clone/SignInPages/Sign_In_2.dart';
import 'package:amazon_clone/SignInPages/Sign_Up.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> checkIfEmailExists(String email) async {
    try {
      final signInMethods = await _auth.fetchSignInMethodsForEmail(email);
      if (signInMethods.isNotEmpty) {
        return 'Already Registered';
      } else {
        return 'Not Registered';
      }
    } catch (e) {
      return 'Error: ${e.toString()}';
    }
  }

  void submit() async {
    if (_formKey.currentState!.validate()) {
      String result = await checkIfEmailExists(controller.text.toString());
      if (result == 'Already Registered') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sign_2(email: controller.text.toString()),
          ),
        );
      } else if (result == 'Not Registered') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sign_Up(email: controller.text.toString()),
          ),
        );
      } else {
        message('$result', Colors.red);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signInAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign in or create account',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 15),
                  Text('Enter e-mail address'),
                  Form(
                    key: _formKey,
                    child: Text_Boxes(controller, TextInputType.emailAddress),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Button('Continue', () {
                            submit();
                          }),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    children: [
                      Text('By continuing, you agree to Amazon\'s '),
                      link('Conditions of Use', true, () {}),
                      Text(' and '),
                      link('Privacy Notice', true, () {}),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

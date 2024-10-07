import 'package:amazon_clone/SignInPages/Sign_In.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:amazon_clone/SignInPages/account_creation.dart';

class verification extends StatefulWidget {
  final String email;
  const verification({required this.email});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  TextEditingController phone = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  IconData icon = Icons.check_box_outline_blank;
  bool hide = true;

  final _key = GlobalKey<FormState>();

  void toggle() {
    setState(() {
      hide = !hide;
      icon = hide ? Icons.check_box_outline_blank : Icons.check_box;
    });
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> _registerWithEmail() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: widget.email,
        password: password.text.trim(),
      );
      print("User registered: ${userCredential.user!.email}");
    } catch (e) {
      print("Error: $e");
    }
  }

  void submit() {
    final isValid = _key.currentState!.validate();
    if (isValid) {
      _registerWithEmail();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => create_account(phone: phone.text.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: signInAppBar(),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create account', style: TextStyle(fontSize: 20)),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Form(
                      key: _key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mobile number'),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: phone,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              focusColor: Colors.orange,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            validator: (value) {
                              if (value.toString().length != 13) {
                                return 'Phone number should be of 10 digits with country code';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          Text('First and last name'),
                          SizedBox(height: 5),
                          Text_Boxes(name, TextInputType.name),
                          SizedBox(height: 10),
                          Text('Password'),
                          SizedBox(height: 5),
                          password_form(hide, password),
                          Text('Passwords must be at least 6 characters'),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              IconButton(
                                onPressed: toggle,
                                icon: Icon(icon, color: Colors.black),
                              ),
                              Text('Show password'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'To verify your number, we will send you a text message with a temporary code. Message and data rates may apply',
                          ),
                          SizedBox(height: 10),
                          Button('Verify mobile number', (){
                            _registerWithEmail();
                            submit();
                          }),
                          Divider(),
                          Text('Already a customer?'),
                          link('Sign in instead', false, () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignIn(),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

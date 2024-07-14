import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/main.dart';

class OTP_Screen extends StatefulWidget {
  final String phone;
  OTP_Screen({required this.phone});

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController otp = TextEditingController();
  late String _verificationId;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _verifyPhoneNumber();
  }

  void submit() {
    final isValid = _key.currentState!.validate();
    if (isValid) {
      _signInWithPhoneNumber();
    }
  }

  Future<void> _verifyPhoneNumber() async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: widget.phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          print("Phone number automatically verified and user signed in: ${_auth.currentUser?.phoneNumber}");
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage())); // Navigate to MainPage
        },
        verificationFailed: (FirebaseAuthException e) {
          print("Verification failed: ${e.message}");
        },
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            _verificationId = verificationId;
          });
          print("Code sent to ${widget.phone}");
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            _verificationId = verificationId;
          });
        },
      );
    } catch (e) {
      print("Failed to Verify Phone Number: $e");
    }
  }

  Future<void> _signInWithPhoneNumber() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: otp.text.trim(),
      );
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      print("User signed in: ${userCredential.user?.phoneNumber}");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage())); // Navigate to MainPage
    } catch (e) {
      print("Failed to sign in: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signInAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Column(
          children: [
            Form(
              key: _key,
              child: TextFormField(
                controller: otp,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter the OTP';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  focusColor: Colors.orange,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Button('Verify', () {
              submit();
            }),
            Divider(),
            notice(),
          ],
        ),
      ),
    );
  }
}

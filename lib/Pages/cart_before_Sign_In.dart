import 'package:amazon_clone/SignInPages/Sign_In.dart';
import 'package:amazon_clone/main.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';

class Cart_before_Sign_In extends StatefulWidget {
  const Cart_before_Sign_In({Key? key}) : super(key: key);

  @override
  State<Cart_before_Sign_In> createState() => _cartState();
}

class _cartState extends State<Cart_before_Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(type: false, back: false),
      body: Container(
        height: MediaQuery.of(context).size.height*0.95,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              child: Image.network('https://cdn-icons-png.flaticon.com/512/6046/6046042.png',
               fit: BoxFit.cover, height: 200,
               ),minRadius: 100,
            ),
            Text('Your Amazon Cart is empty', style: Theme.of(context).textTheme.headline6,),
            link('Shop today\'s deals', false, () { }),
            Button('Sign in to your account', () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
            }),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(17)),
                    margin: EdgeInsets.all(10),
                    height: 50,
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                      }, 
                      child: Text('Sign up now', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w100)),
                      style: const ButtonStyle(
                        alignment: Alignment.center, 
                        elevation: MaterialStatePropertyAll(3), 
                        overlayColor: MaterialStatePropertyAll(Colors.yellow), 
                        backgroundColor: MaterialStatePropertyAll(Colors.white), 
                        splashFactory: InkSplash.splashFactory, 
                        animationDuration: Duration(milliseconds: 1000),
                        ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.grey.shade300.withOpacity(0.7),
            ),
            Button('Continue shopping', () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(),));
            })
          ],
        ),
      ),
    );
  }
}
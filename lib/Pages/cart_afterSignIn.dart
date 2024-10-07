import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Product_Widget.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/main.dart';
import 'package:amazon_clone/utilities/theme.dart';
import 'package:flutter/material.dart';

class Cart_after_SignIn extends StatefulWidget {
  const Cart_after_SignIn({Key? key}) : super(key: key);

  @override
  State<Cart_after_SignIn> createState() => _Cart_after_SignInState();
}

class _Cart_after_SignInState extends State<Cart_after_SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(type: false, back: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(17),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    child: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/6046/6046042.png'),),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      const Text('You Amazon cart is Empty', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      link('Pick up where you left', false, () { })
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                color: peach.withOpacity(0.4),
                border: const Border(top: BorderSide(color: greycolor), bottom: BorderSide(color: greycolor)),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    child: Image(image: NetworkImage('https://clipartcraft.com/images/amazon-logo-transparent-circle.png'), fit: BoxFit.contain,)),
                    SizedBox(width: 10,),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Pay with Amazon Pay UPI Enjoy faster payments & instant refunds.', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15,
                        ),
                        children: [
                          TextSpan(text: ' Link now', style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold, fontSize: 15)),
                        ]
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            ProductInCart(productName: "productName", cost: 45, discount: "discount", productUID: "productUID", sellerName: "sellerName", sellerUID: "sellerUID", rating: 3, noOfItems: 4),
            ProductInCart(productName: "productName", cost: 45, discount: "discount", productUID: "productUID", sellerName: "sellerName", sellerUID: "sellerUID", rating: 3, noOfItems: 4),
            ProductInCart(productName: "productName", cost: 45, discount: "discount", productUID: "productUID", sellerName: "sellerName", sellerUID: "sellerUID", rating: 3, noOfItems: 4),
            ProductInCart(productName: "productName", cost: 45, discount: "discount", productUID: "productUID", sellerName: "sellerName", sellerUID: "sellerUID", rating: 3, noOfItems: 4),
            ProductInCart(productName: "productName", cost: 45, discount: "discount", productUID: "productUID", sellerName: "sellerName", sellerUID: "sellerUID", rating: 3, noOfItems: 4),
            Divider(thickness: 20,),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(child: rounded_button('Continue Shopping', (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                  })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
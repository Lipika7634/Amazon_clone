import 'package:amazon_clone/Screens/ProductScreen.dart';
import 'package:amazon_clone/Widgets/Product_Widget.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';

class ResultScreen extends StatefulWidget {
  final String query;
  const ResultScreen({Key? key, required this.query}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(type: true, back: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  TextSpan(text: "Showing Results for "),
                  TextSpan(
                    text: widget.query,
                    style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 30,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreenModel(),));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ProductInResultWidget(productName: "productName", cost: 300, discount: 30, productUID: "productUID", sellerName: "sellerName", sellerUID: "sellerUID", rating: 3, noOfRating: 6),
                  ),
                );
              })
            ),
          ],
        ),
      ),
    );
  }
}

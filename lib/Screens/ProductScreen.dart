import 'dart:ui';
import 'package:amazon_clone/Screens/sellScreen.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/Product_Widget.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ProductScreenModel extends StatefulWidget {
  const ProductScreenModel({Key? key}) : super(key: key);

  @override
  State<ProductScreenModel> createState() => _ProductScreenModelState();
}

class _ProductScreenModelState extends State<ProductScreenModel> {
  String seller = "Lipika Priya";
  int rate = 3;
  String imageUrl = "https://eapi.supplyhog.com/file-srv/img/i_ab712d31a3adae6586af4e3c38e7e60e.jpg";
  double rs = 233.675876;
  String productName = "Bulb";
  void _showReviewDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return reviewDialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SearchBarWidget(type: true, back: true),
        body: SingleChildScrollView( 
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.topLeft, child: Text("$seller", style: TextStyle(fontSize: 20),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$productName", style: TextStyle(color: Colors.blue[700], fontSize: 17),),
                  rating(rate),
                ],
              ),
              Padding(child: Image.network(imageUrl), padding: EdgeInsets.symmetric(vertical: 15),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "₹",
                      style: TextStyle(
                        fontSize: 15,
                        fontFeatures: [FontFeature.superscripts()],
                      ),
                    ),
                    Text(
                      '${rs.toInt()}',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      ("·"+(((rs - rs.toInt())*100).toInt()).toString()),
                      style: TextStyle(
                        fontSize: 23,
                        fontFeatures: [FontFeature.superscripts()],
                      ),
                    ),
                  ],
                ),
              ),
              button2('Buy Now', Colors.orange, () {}),
              button2('Add to cart', Colors.amber, () {}),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  onPressed: () {
                    _showReviewDialog();
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('Drop a review for this product', style: TextStyle(color: Colors.black),)),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return reviewSection(seller, rate, 'Nice Product');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

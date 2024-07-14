import 'package:amazon_clone/Screens/Results.dart';
import 'package:amazon_clone/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/Widgets/Box_UI.dart';

class items extends StatefulWidget {
  const items({Key? key}) : super(key: key);

  @override
  State<items> createState() => _itemsState();
}

class _itemsState extends State<items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(type: false, back: false),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                mainAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Box_Container(text: itemList[index], imageUrl: itemListImage[index], action: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(query: itemList[index]),));
                });
              },
            ),
            services('Customer Service', () { }),
            services('Sign In', () { }),
          ],
        ),
      ),
    );
  }
}

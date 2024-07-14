import 'package:amazon_clone/Widgets/banner.dart';
import 'package:amazon_clone/Widgets/userDetails.dart';
import 'package:amazon_clone/utilities/utility.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/utilities/constant.dart';
import 'package:amazon_clone/Widgets/extra_widget.dart';
import 'package:amazon_clone/Screens/Results.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  ScrollController scroll = ScrollController();
  double offset = 0;

  @override
  void dispose() {
    super.dispose();
    scroll.dispose();
  }

  @override
  void initState() {
    super.initState();
    scroll.addListener(() {
      setState(() {
        offset = scroll.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: SearchBarWidget(type: false, back: false),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scroll,
            child: Column(
              children: [
                SizedBox(height: kAppBarHeight/2,),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  height: 70,
                  child: ListView.builder(
                    itemCount: categoriesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(query: categoriesList[index]),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(categoryLogos[index]),
                              height: 40,
                            ),
                            Text(
                              categoriesList[index],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: getScreenSize().width,
                  height: 153,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: largeAds.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(query: ''),));
                        },
                        child: largeBanner()
                      );
                    },
                  ),
                ),
                Container(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: smallAds.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(query: ''),));
                        },
                        child: smallBanner(index)
                      );
                    },
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    height: 60,
                    width: w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyWidget('FIRST DELIVERY', 'ON FIRST ORDER', logo[0]),
                        MyWidget('PAY ON', 'DELIVERY', logo[1]),
                        MyWidget('EASY', 'RETURNS', logo[2]),
                      ],
                    ),
                  ),
                ),
                Products(Offer_70, 70),
                Products(Offer_60, 60),
                Products(Offer_50, 50),
                Products(Offer_0, 0),
              ],
            ),
          ),
          UserDetails(offset: offset),
        ],
      ),
    );
  }
}

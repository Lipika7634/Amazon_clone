import 'package:amazon_clone/Screens/Results.dart';
import 'package:amazon_clone/utilities/constant.dart';
import 'package:amazon_clone/utilities/theme.dart';
import 'package:amazon_clone/utilities/utility.dart';
import 'package:flutter/material.dart';

Widget alert_box(String str){
  return Container(
    height: 180,
    width: 100,
    decoration: BoxDecoration(
      color: bgcolor,
      border: Border.all(color: Colors.black, width: 1),
      borderRadius: BorderRadius.circular(15),
    ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Expanded(child: Text(str, softWrap: true, overflow: TextOverflow.visible,))
        ],
      ),
    ),
  );
}

class largeBanner extends StatefulWidget {
  const largeBanner({Key? key}) : super(key: key);

  @override
  State<largeBanner> createState() => _largeBannerState();
}

class _largeBannerState extends State<largeBanner> {
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenSize().width,
      child: Stack(
        children: [
          GestureDetector(
            onHorizontalDragEnd: (_) {
              print(idx);
                if (idx == largeAds.length - 1) {
                  setState(() {
                    idx = 0;
                  });
                } else {
                  setState(() {
                    idx++;
                  });
                }
              },
            child: Image.network(
              largeAds[idx],
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 90,
              width: getScreenSize().width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [bgcolor, bgcolor.withOpacity(0)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget smallBanner(int idx){
  return Container(
    height: 180,
    width: 140,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5)
    ),
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: NetworkImage(smallAds[idx])),
          Text(adItemNames[idx]),
        ],
      ),
    ),
  );
}

Widget Products(List<String> list, int offer) {
  String str = '';
  if (offer == 0) {
    str = 'Explore';
  }else{
    str = 'Upto $offer% off';
  }
  if (list.isEmpty) {
    return Container();
  }
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    height: 250,
    width: double.infinity,
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(str),
                TextButton(
                  onPressed: () {
                    // Handle show more action
                  },
                  child: Text('Show more'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(query: ''),));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    width: 150, // Adjust width as necessary for images
                    child: Image.network(
                      list[index],
                      fit: BoxFit.contain,
                      height: 100,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}


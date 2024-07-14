import 'package:amazon_clone/utilities/constant.dart';
import 'package:amazon_clone/utilities/theme.dart';
import 'package:amazon_clone/utilities/utility.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final double offset;
  const UserDetails({Key? key, required this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = getScreenSize().width;
    return Positioned(
      top: -offset/10,
      child: Container(
        height: kAppBarHeight/2,
        width: w,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: lightBackgroundGradient),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          child: TextButton(
            onPressed: (){}, 
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, color: Colors.black,),
                Expanded(
                  child: Text('Delivering to Patna 800020-Update location', 
                  style: TextStyle(color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
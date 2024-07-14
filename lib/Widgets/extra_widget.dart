import 'package:flutter/material.dart';

Widget MyWidget(String text1, String text2, String imageUrl){
  return Row(
      children: [
        CircleAvatar(
          child: Image(image: NetworkImage(imageUrl), height: 30,), 
          radius: 21, 
          backgroundColor: Colors.orange.shade600,
        ),
        SizedBox(width: 3,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1, style: TextStyle(fontSize: 11),),
            Text(text2, style: TextStyle(fontSize: 11),)
          ],
        ),
      ],
    );
}
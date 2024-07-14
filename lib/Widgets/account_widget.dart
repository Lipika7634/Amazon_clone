import 'package:flutter/material.dart';

Widget account_widget(String heading, String text, String button, VoidCallback action){
  return Container(
    height: 180,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(heading, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Text(text),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: (){action();}, 
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(button, style: TextStyle(color: Colors.black),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
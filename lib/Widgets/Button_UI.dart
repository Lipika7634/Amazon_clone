import 'package:amazon_clone/utilities/utility.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/utilities/theme.dart';

Widget Button(String label, VoidCallback action){
  return Row(
    children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(17)),
          margin: EdgeInsets.all(10),
          height: 50,
          child: TextButton(
            onPressed: action, 
            child: Text(label, style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w100)),
            style: const ButtonStyle(
              alignment: Alignment.center, 
              elevation: MaterialStatePropertyAll(0), 
              overlayColor: MaterialStatePropertyAll(Colors.yellow), 
              backgroundColor: MaterialStatePropertyAll(yellowColor), 
              splashFactory: InkSplash.splashFactory, 
              animationDuration: Duration(milliseconds: 1000), 
              // shadowColor: MaterialStatePropertyAll(),
              ),
          ),
        ),
      ),
    ],
  );
}

Widget rounded_button(String str, VoidCallback action){
  return TextButton(
    onPressed: (){action();}, 
    child: Text(str, style: TextStyle(color: Colors.black),),
    style: ButtonStyle(
      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 18)),
      backgroundColor: MaterialStatePropertyAll(yellowColor),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)))
    ),
  );
}

Widget widget_button(IconData icon, VoidCallback action){
  return ElevatedButton(onPressed: action, 
    child: Icon(icon, color: Colors.black,),
    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent),
    elevation: MaterialStatePropertyAll(0)),
  );
}

Widget line(BuildContext context){
  return Container(
    color: Colors.grey.shade600,
    height: 1,
    width: MediaQuery.of(context).size.width,
  );
}

Widget button2(String text, Color color, VoidCallback action){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8),
    height: 75,
    width: getScreenSize().width*0.85,
    child: ElevatedButton(
      onPressed: () {
        action();
      }, 
      child: Text("$text", style: TextStyle(color: Colors.black),),
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color),elevation: MaterialStatePropertyAll(4), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
    ),
  );
}
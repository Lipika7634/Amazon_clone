import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget Text_Boxes(TextEditingController controller, TextInputType type){
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        TextFormField(
          keyboardType: type,
          validator: (value) {
            if (value.toString().isEmpty) {
              return 'Entry should not be Empty';
            } else {
              return null;
            }
          },
          controller: controller,
          decoration: InputDecoration(
            focusColor: Colors.orange, 
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),), 
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
          ),
        ),
      ],
    ),
  );
}

Future<bool?> message(String text, Color color){
  return Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 100,
    backgroundColor: color,
    textColor: Colors.white,
    fontSize: 16.0
  );
}

Widget link(String str, bool line, VoidCallback action){
  return InkWell(
    onTap: action,
    child: Text(str, style: TextStyle(color: Colors.blue.shade700, fontSize: 15,
    decoration: (line)? TextDecoration.underline: null,
    ),),
  );
}

class Box_Container extends StatefulWidget {
  final String text;
  final String imageUrl;
  final VoidCallback action;
  const Box_Container({
    Key? key, 
    required this.text,
    required this.imageUrl,
    required this.action
  }) : super(key: key);

  @override
  State<Box_Container> createState() => _Box_ContainerState();
}

class _Box_ContainerState extends State<Box_Container> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black45.withOpacity(0.6)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 100,
              child: Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 114, 225, 240).withOpacity(0.4),
                ),
              ),
            ),
            Positioned(
              bottom: 0, left: 0, right: 0, top: 0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45.withOpacity(0.6)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: widget.action,
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                    elevation: MaterialStatePropertyAll(0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.text, style: TextStyle(color: Colors.black)),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image(
                          image: NetworkImage(widget.imageUrl),
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget services(String text, VoidCallback action){
  return Container(
    margin: EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black45.withOpacity(0.6)),
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12.withOpacity(0.8),
          spreadRadius: 0.1,
          blurRadius: 5,
        ),
      ],
    ),
    child: ElevatedButton(onPressed: action,
    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent), elevation: MaterialStatePropertyAll(0)),
    child: Row(
      children: [
        Text(text, style: TextStyle(color: Colors.black),),
        Icon(Icons.keyboard_arrow_right, color: Colors.black,),
      ],
    )),
  );
}

Widget notice(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          link('Conditions of Use', false, () { }),
          link('Privacy Notice', false, () { }),
          link('Help', false, () { }),
        ],
      ),
      Text('© 1996-2024, Amazon.com, Inc. or its affiliates'),
    ],
  );
}

ButtonStyle design (){
  return ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent), elevation: MaterialStatePropertyAll(0));
}

Widget password_form(bool hide, TextEditingController controller){
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        TextFormField(
          validator: (value) {
            if (value.toString().length < 6) {
              return 'Password should be of length 6';
            } else {
              return null;
            }
          },
          controller: controller,
          decoration: InputDecoration(
            focusColor: Colors.orange, 
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),), 
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
          ),
          obscureText: hide,
        ),
      ],
    ),
  );
}
import 'dart:typed_data';
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:amazon_clone/Widgets/Button_UI.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';
import 'package:amazon_clone/utilities/utility.dart';
import 'package:flutter/material.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  final key1 = GlobalKey<FormState>();
  final key2 = GlobalKey<FormState>();
  int selected = 1;
  TextEditingController name = TextEditingController();
  TextEditingController cost = TextEditingController();
  Uint8List? image;
  bool isLoading = false;
  Size size = getScreenSize();

  @override
  void dispose(){
    super.dispose();
    name.dispose();
    cost.dispose();
  }

  @override
  void submit(){
    if (key1.currentState!.validate() && key2.currentState!.validate()) {
      setState(() {
        name.clear();
        cost.clear();
        selected = 1;
        image = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        image == null ?
                          Image.network('https://www.contentviewspro.com/wp-content/uploads/2017/07/default_image.png', height: size.height/6,) :
                          Image.memory(image!, height: size.height/6),
                          Positioned(
                            top: -8,
                            right: -5,
                            child: IconButton(onPressed: () async {
                              Uint8List? temp = await pickImage();
                              if (temp != null) {
                                setState(() {
                                  image = temp;
                                });
                              }
                            }, icon: Icon(Icons.cloud_upload_outlined, size: 28),)
                          ),
                      ],
                    ),
                    Text("Product Image")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name'),
                    Form(key: key1, child: Text_Boxes(name, TextInputType.name)),
                    Text('Cost'),
                    Form(key: key2, child: Text_Boxes(cost, TextInputType.number)),
                    Text('Discount'),
                    ListView(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        ListTile(
                          title: Text('None'),
                          leading: Radio(value: 1, groupValue: selected, onChanged: ((int? i) {
                            setState(() {
                              selected = i!;
                            });
                          }),
                        ),),
                        ListTile(
                          title: Text('50%'),
                          leading: Radio(value: 2, groupValue: selected, onChanged: (int? i) {
                            setState(() {
                              selected = i!;
                            });
                          },),
                        ),
                        ListTile(
                          title: Text('60%'),
                          leading: Radio(value: 3, groupValue: selected, onChanged: (int? i) {
                            setState(() {
                              selected = i!;
                            });
                          },),
                        ),
                        ListTile(
                          title: Text('70%'),
                          leading: Radio(value: 4, groupValue: selected, onChanged: (int? i) {
                            setState(() {
                              selected = i!;
                            });
                          },),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              button2('Sell', Colors.amber, () { submit();}),
              button2('Back', Colors.grey.shade400, () {
                Navigator.pop(context);
              })
            ],
          ),
        ),
      ),
    );
  }
}
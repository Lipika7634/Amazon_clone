import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';

class Secarch_Page extends StatefulWidget {
  const Secarch_Page({Key? key}) : super(key: key);

  @override
  State<Secarch_Page> createState() => _Secarch_PageState();
}

class _Secarch_PageState extends State<Secarch_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(back: true, type: true),
      body: Container(),
    );
  }
}
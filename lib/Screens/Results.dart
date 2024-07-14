import 'package:flutter/material.dart';
import 'package:amazon_clone/Widgets/app_bar.dart';

class ResultScreen extends StatefulWidget {
  final String query;
  const ResultScreen({Key? key, required this.query}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(type: true, back: true),
      body: Container(),
    );
  }
}
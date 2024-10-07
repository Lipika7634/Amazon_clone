import 'package:flutter/material.dart';
import 'package:amazon_clone/Model/userDetails.dart';
import 'package:amazon_clone/Resources/cloudFirestore_method.dart';

class UserDetailsProvider with ChangeNotifier{
  UserDetailsModel userDetails;
  UserDetailsProvider() : userDetails = UserDetailsModel(name: "Loading... ", address: "Loading... ");

  Future getData() async {
    userDetails = await CloudFirestoreClass().getNameAndAddress();
    notifyListeners();
  }
}
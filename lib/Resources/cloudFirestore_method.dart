import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:amazon_clone/Model/userDetails.dart';

class CloudFirestoreClass {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future uploadNameAndAddressToDatabase(
      {required UserDetailsModel user}) async {
    await firebaseFirestore
        .collection("users")
        .doc(firebaseAuth.currentUser!.uid)
        .set(user.getJson());
  }

  Future getNameAndAddress() async {
    DocumentSnapshot snap = await firebaseFirestore
        .collection("users")
        .doc(firebaseAuth.currentUser!.uid)
        .get();
    
    UserDetailsModel userModel = UserDetailsModel.getModelFromJson((snap.data() as dynamic),);

    return userModel;
  }
  
  Future<String> uploadProductToDatabase({
    required Uint8List? image,
    required String productName,
    required String rawCost,
    required int discount,
    required String sellerName,
    required String sellerUid,
    required int rating,
    required int noOfRating,
  }) async {
    productName.trim();
    rawCost.trim();
    if(image == null){
      return "Image is null";
    }else if(productName == ""){
      return "ProductName is null";
    }else if(rawCost == ""){
      return "Raw cost is null";
    }
    try {
      
      return "Success";
    } catch (ex) {
      return ex.toString();
    }
  }
}
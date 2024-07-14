// import 'package:amazon_clone/model/product_model.dart';
// import 'package:amazon_clone/screens/account_screen.dart';

// import 'package:amazon_clone/Pages/personal.dart';
// import 'package:amazon_clone/Pages/cart.dart';
// import 'package:amazon_clone/Pages/home.dart';
// import 'package:flutter/material.dart';

// import 'package:amazon_clone/Pages/home.dart';
// import 'package:amazon_clone/screens/more_screen.dart';
// import 'package:amazon_clone/widgets/simple_product_widget.dart';

const double kAppBarHeight = 80;

const List<String> options = [
  "Your Orders",
  "Your Address",
  "Top-up your Amazon Pay Wallet",
  "View Amazon Pay balance statement",
  "Manage Your Profiles",
  "Amazon Pay UPI"
];

List<String> choices = [
  "Your Orders",
  "Buy Again",
  "Your Account",
  "Your Lists"
];

const List<String> categoriesList = [
  "Prime",
  "Mobiles",
  "Fashion",
  "Electronics",
  "Home",
  "Fresh",
  "Appliances",
  "Books, Toys",
  "Essential"
];

const List<String> logo = [
  "https://thumbs.dreamstime.com/b/black-passenger-van-drawing-vector-illustration-eines-160849203.jpg",
  "https://cdn3.vectorstock.com/i/1000x1000/98/37/hands-human-paying-money-isolated-icon-vector-17729837.jpg",
  "https://cdn1.iconfinder.com/data/icons/e-commerce-223/48/11-1024.png"
];

const List<String> sideLines = [
  "FREE DELIVERY ON FIRST ORDER",
  "PAY ON DELIVERY",
  "EASY RETURNS"
];

const List<String> list = [
  "Upto ₹100 cashback on your first order",
  "Free Delivery on first order - for top categories",
  "Easy Returns",
  "Pay on Delivery"
];

const List<String> listIcons = [
  "https://thumbs.dreamstime.com/b/black-passenger-van-drawing-vector-illustration-eines-160849203.jpg",
  "https://cdn3.vectorstock.com/i/1000x1000/98/37/hands-human-paying-money-isolated-icon-vector-17729837.jpg",
  "https://cdn1.iconfinder.com/data/icons/e-commerce-223/48/11-1024.png",
  "https://cdn1.iconfinder.com/data/icons/e-commerce-223/48/11-1024.png",
];

const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];

const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> Offer_70 = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
];

const List<String> Offer_60 = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
];

const List<String> Offer_50 = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
];

const List<String> Offer_0 = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

const List<String> itemList = [
  "Amazon Pay",
  "Mobiles, Electronics, Alexa",
  "Deals & Savings",
  "Groceries & Pet Supplies",
  "MiniTV, Video & Music",
  "Fashion & Beauty",
  "Prime",
  "Sports & Fitness",
  "Travel & Auto",
  "Books & Education"
];

const List<String> itemListImage = [
  "https://gumlet.assettype.com/afaqs/2023-08/d8f9b424-dc2f-420f-a092-b290803e1242/Amazon_Pay_Campaign.jpg?rect=0%2C0%2C4794%2C2517&w=1200&auto=format%2Ccompress&ogImage=true",
  "https://static.toiimg.com/thumb/msid-78714674,width-1070,height-580,imgsize-1215263,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg",
  "https://bingoloans-e14c.kxcdn.com/wp-content/uploads/2020/11/black-friday-woman-holding-many-shopping-bags-while-walking-shopping-mall-copy-2048x1090.jpg",
  "https://thumbs.dreamstime.com/z/shopping-basket-grocery-products-shopping-basket-grocery-products-white-background-160388548.jpg",
  "https://assets-global.website-files.com/619cb1d12095e3f3cdddaeb2/63760bb0dfe4e214183862b9_Blog_Banner_Best_WS_on_Zee5_copy-min.jpg",
  "https://wallpapercave.com/wp/wp8760420.jpg",
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://winnerssportswear.com/wp-content/uploads/2020/02/Sporting-Equipment-1.jpg",
  "https://www.letuspublish.com/wp-content/uploads/2017/05/make-travel-friends.jpg",
  "https://miro.medium.com/v2/resize:fit:10944/1*S81O15rjKfG-BFdnNC6-GQ.jpeg",
];

//Don't even attemp to scroll to the end of this manually lmao
const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";

// List<Widget> testChildren = [
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   )
// ];

List<String> keysOfRating = [
  "Very bad",
  "Poor",
  "Average",
  "Good",
  "Excellent"
];
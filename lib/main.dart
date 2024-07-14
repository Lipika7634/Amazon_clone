import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io';
import 'Pages/home.dart';
import 'Pages/cart.dart';
import 'Pages/items.dart';
import 'Pages/account.dart';
import 'package:amazon_clone/utilities/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid ? await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: 'AIzaSyBZNvE6NuQQ09gGxGzooQcJRWOdyZTEbpE', 
    appId: '1:1061124824904:android:f9db92bb9a390a0acfdd7d', 
    messagingSenderId: '1061124824904', 
    projectId: 'clone-7d80a')
  ):
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    )
  );
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController();
  int selectedIndex = 0;
  void tapped(int idx){
    setState(() {
      selectedIndex = idx;
    });
    controller.jumpToPage(idx);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            home(),
            Account(),
            cart(),
            items()
          ],
        ),
        bottomNavigationBar: Container(
          height: 48,
          child: TabBar(
            indicator: const BoxDecoration(
              border: Border(top: BorderSide(color: cyanColor, width: 3))
            ),
            indicatorSize: TabBarIndicatorSize.label,
            onTap: tapped,
            tabs: [
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: selectedIndex == 0 ? cyanColor : Colors.black,
                    ),
                    Text('Home', style: TextStyle(color: selectedIndex == 0 ? cyanColor : Colors.black, fontSize: 12),)
                  ],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: selectedIndex == 1 ? cyanColor : Colors.black,
                    ),
                    Text('You', style: TextStyle(color: selectedIndex == 1 ? cyanColor : Colors.black, fontSize: 12),)
                  ],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: selectedIndex == 2 ? cyanColor : Colors.black,
                    ),
                    Text('Cart', style: TextStyle(color: selectedIndex == 2 ? cyanColor : Colors.black, fontSize: 12),)
                  ],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.menu,
                      color: selectedIndex == 3 ? cyanColor : Colors.black,
                    ),
                    Text('Menu', style: TextStyle(color: selectedIndex == 3 ? cyanColor : Colors.black, fontSize: 12),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Sign_In -> Sign_Up ->verification -> account_creation -> hacker_out -> OTP
//         -> 
import 'package:amazon_clone/Widgets/Box_UI.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/utilities/constant.dart';
import 'package:amazon_clone/utilities/theme.dart';
import 'package:amazon_clone/Screens/Search_Screen.dart';
import 'package:amazon_clone/Screens/Results.dart';

PreferredSizeWidget? signInAppBar(){
  return AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(amazonLogo, height: 30,),
          Text('.in', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),),
        ],
      ), centerTitle: true, backgroundColor: Colors.white54,);
}

class SearchBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool type;
  final bool back;
  final TextEditingController textController = TextEditingController();

  SearchBarWidget({
    Key? key,
    required this.type,
    required this.back,
  })  : preferredSize = const Size.fromHeight(70),
        super(key: key);

  @override
  final Size preferredSize;

  OutlineInputBorder get border => OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(
      color: Colors.grey,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      height: kAppBarHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: bgGradient),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            if (back)
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: greycolor, width: 1),
                  borderRadius: BorderRadius.circular(5)
                ),
                height: preferredSize.height * 0.7,
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    Expanded(
                      child: TextField(
                        controller: textController,
                        onSubmitted: (String query) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(query: query),
                            ),
                          );
                        },
                        readOnly: !type,
                        onTap: () {
                          if (!type) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Secarch_Page(),
                              ),
                            );
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Search Amazon.in",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    if(!type)
                    IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined, color: greycolor,)),
                    if(!type)
                    IconButton(onPressed: () {}, icon: const Icon(Icons.mic_none_rounded, color: greycolor,)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}

PreferredSizeWidget? account_app_bar(){
  return AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: bgGradient),
      ),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(image: NetworkImage(amazonLogo), height: 30,),
            Text('.in'),
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: (){}, child: Icon(Icons.notifications_none_outlined), style: design()),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.search), style: design()),
          ],
        ),
      ],
    ),
  );
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/pages/navpages/bar_item_page.dart';
import 'package:project_pfe/pages/navpages/home_page.dart';
import 'package:project_pfe/pages/navpages/my_page.dart';
import 'package:project_pfe/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomePage(),
   BarItemPage(),
   SearchPage(),
   EstateProperty()

  ];
  int currentIndex=0;
  void ontap(int index){
setState(() {
  currentIndex=index;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: ontap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          // BottomNavigationBarItem(label: ("Home"),icon: Icon(CupertinoIcons.home)),
          // BottomNavigationBarItem(label: ("Favorites"),icon: Icon(CupertinoIcons.heart)),
          // BottomNavigationBarItem(label: ("Search"),icon: Icon(CupertinoIcons.search)),
          // BottomNavigationBarItem(label: ("Profile"),icon: Icon(Icons.person)),  
          // BottomNavigationBarItem(label: ("Messages"),icon: Icon(Icons.message_outlined)),

        ],
      ),
    );
  }
}
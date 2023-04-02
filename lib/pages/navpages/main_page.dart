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
   MyPage()

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
          BottomNavigationBarItem(label: ("Home"),icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: ("bar"),icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: ("search"),icon: Icon(Icons.search)),

          BottomNavigationBarItem(label: ("persone"),icon: Icon(Icons.person)),

        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/pages/navpages/bar_item_page.dart';
import 'package:project_pfe/pages/navpages/home_page.dart';
import 'package:project_pfe/pages/navpages/my_page.dart';
import 'package:project_pfe/pages/navpages/rent_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomePage(),
   ChatPage(),
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
    );
  }
}
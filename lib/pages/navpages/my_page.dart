import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/Welcome_page.dart';
import 'package:project_pfe/constants/constants.dart';
import 'package:project_pfe/models/item_model.dart';
import 'package:project_pfe/page/page/home_page.dart';
import 'package:project_pfe/pages/Dashborder.dart';
import 'package:project_pfe/pages/detail_page.dart';
import 'package:project_pfe/pages/navpages/customappbar.dart';
import 'package:project_pfe/pages/navpages/rent_page.dart';

import 'package:project_pfe/wigdet/house_card.dart';
import 'package:project_pfe/wigdet/recomendation.dart';
import 'package:project_pfe/wigdet/search_field.dart';
import 'package:project_pfe/wigdet/select_category.dart';
import 'package:project_pfe/wigdet/suggestion_list.dart';

import '../../models/recommended_places.dart';

import '../../page/profile_page.dart';
import '../../wigdet/nearby_places.dart';
import 'bar_item_page.dart';
import 'home_page.dart';

class EstateProperty extends StatefulWidget {
  const EstateProperty({Key? key}) : super(key: key);

  @override
  State<EstateProperty> createState() => _EstatePropertyState();
}

class _EstatePropertyState extends State<EstateProperty> {
  
     GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
       int selsctedIconIndex = 2;
        List pages=[
    HomePage(),
   ChatPage(),
   SearchPage(),
   ProfilePage(),
   Dashborder()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
       bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selsctedIconIndex,
        buttonBackgroundColor: Color(0xFF26A69A),
        height: 60.0,
        
        onTap: (index) {
          setState(() {
            selsctedIconIndex = index;
          });
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Icon(Icons.play_arrow_outlined, size: 30),
          Icon(Icons.search, size: 30,),
          Icon(Icons.home_outlined, size: 30,),
          Icon(Icons.favorite_border_outlined, size: 30,),
          Icon(Icons.person_outline, size: 30,),
        ],
      ),
      
      
      //backgroundColor: Colors.white,
      body:pages[selsctedIconIndex],

      );
      
  

  }
 
  }
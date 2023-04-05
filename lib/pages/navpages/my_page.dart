import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/constants/constants.dart';
import 'package:project_pfe/models/item_model.dart';
import 'package:project_pfe/pages/navpages/Estate_Property.dart';
import 'package:project_pfe/wigdet/house_card.dart';
import 'package:project_pfe/wigdet/recomendation.dart';
import 'package:project_pfe/wigdet/search_field.dart';
import 'package:project_pfe/wigdet/select_category.dart';
import 'package:project_pfe/wigdet/suggestion_list.dart';

import '../../models/recommended_places.dart';
import '../../wigdet/nearby_places.dart';

class EstateProperty extends StatefulWidget {
  const EstateProperty({Key? key}) : super(key: key);

  @override
  State<EstateProperty> createState() => _EstatePropertyState();
}

class _EstatePropertyState extends State<EstateProperty> {
    int selsctedIconIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selsctedIconIndex,
        buttonBackgroundColor: primary,
        height: 60.0,
        color: white,
        onTap: (index) {
          setState(() {
            selsctedIconIndex = index;
          });
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Icon(Icons.play_arrow_outlined, size: 30,color: selsctedIconIndex == 0 ? white : black,),
          Icon(Icons.search, size: 30,color: selsctedIconIndex == 1 ? white : black,),
          Icon(Icons.home_outlined, size: 30,color: selsctedIconIndex == 2 ? white : black,),
          Icon(Icons.favorite_border_outlined, size: 30,color: selsctedIconIndex == 3 ? white : black,),
          Icon(Icons.person_outline, size: 30,color: selsctedIconIndex == 4 ? white : black,),
        ],
      ),
      
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
             CustomAppBar(),
            SearchField(),
            SelectCategory(),
            SizedBox(height: 10,),
            SuggestionList(title: "Recommendation for you",items: item.recommendation,),
           // SizedBox(height: 10,),
           // HouseCard(),
           Recomendation(),
           // SizedBox(height: 10,),
            SuggestionList(title: "Nearby from you",items: item.recommendation,),
            Courses(),
            
          ],
        ),
        ),
        
      ),
      
    );
    
  }


 
}
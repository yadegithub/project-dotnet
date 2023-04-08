import 'package:flutter/material.dart';

import '../../wigdet/nearby_places.dart';
import '../../wigdet/recomendation.dart';
import '../../wigdet/search_field.dart';
import '../../wigdet/select_category.dart';
import '../../wigdet/suggestion_list.dart';
import '../details/components/custom_appbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
         
        
         
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
               // HomeBckground(),
                 CustomAppBar(),
                SearchField(),
                   SizedBox(height: 10,),
                Categories(),
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
          
        ),
      //child: getSelectedWidget(index:index),
      );
    
  }
  
}
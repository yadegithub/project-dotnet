import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../wigdet/nearby_places.dart';
import '../../wigdet/recomendation.dart';
import '../../wigdet/search_field.dart';
import '../../wigdet/select_category.dart';
import '../../wigdet/suggestion_list.dart';
import '../details/components/custom_appbar.dart';
import 'dart:math' as math;

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Container(
         
        
         
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
               // HomeBckground(),
                Padding(
      padding: EdgeInsets.only(left: 20.0,right: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(appPadding / 8),
                child: Container(
                  decoration: new BoxDecoration(
                    color: myColor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(appPadding / 20),
                    child: Container(
                      decoration: new BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(appPadding / 8),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'lib/images/peapel.JPG',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Text(
                'Mint Malainin',
                style: TextStyle(color: black, fontWeight: FontWeight.w600,fontSize: 18),
              ),
            ],
          ),

          Row(
            children: [
               Icon(
                    Icons.mic_none_rounded,
                    size: 30.0,
                    color: Colors.grey.shade500,
                  ),
              Stack(
                children: [
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 30.0,
                    color: Colors.grey.shade500,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('4',style: TextStyle(color: white,fontSize: 8),),
                    ),
                  )
                ],
              ),
              Transform(
                transform: Matrix4.rotationY(math.pi),
                alignment: Alignment.center,
                child: Icon(
                  Icons.sort_rounded,
                  size: 30.0,
                  color: Color(0xFF26A69A),
                ),
              )
            ],
          )
        ],
      ),
    ),
                SearchField(),
                   SizedBox(height: 10,),
                Categories(),
                SizedBox(height: 10,),
                SuggestionList(title: "Recommendation for you",),
               // SizedBox(height: 10,),
               // HouseCard(),
               Recomendation(),
               // SizedBox(height: 10,),
                SuggestionList(title: "Nearby from you",),
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
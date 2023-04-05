import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/models/item_model.dart';
import 'package:project_pfe/models/item_model.dart';
import 'package:project_pfe/models/recommended_places.dart';

import '../models/item_model.dart';
import '../models/item_model.dart';
import '../models/item_model.dart';

class HouseCard extends StatelessWidget {
  const HouseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 300,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
         return SizedBox(
          width: 220,
          child: Card(
            elevation: 0.4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              )
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        recommendedplaces[index].image,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                      height: 150,
                      ),
                    ),
                   
                    
                    SizedBox(height: 5,),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                    Text("St Regis Bora Bora",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    const Text("4.4",
                     style:TextStyle(
                     fontSize: 12
                    ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                    //  margin: EdgeInsets.all(10),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            CupertinoIcons.location,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          
                      SizedBox(width: 5,),
                      Text("French Polymesia",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      ),
                      Icon(
                            CupertinoIcons.heart,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                        ],
                      ),
                      
                    )
                  ],
                ),
              ),
            ),
          ));
        }, 
        separatorBuilder: (context,index) => const Padding(
          padding:EdgeInsets.only(right: 10) ),
         itemCount: recommendedplaces.length),
    );
  }
}
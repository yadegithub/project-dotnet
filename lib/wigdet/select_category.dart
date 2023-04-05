import 'package:flutter/material.dart';
import 'package:project_pfe/models/recommended_places.dart';




class SelectCategory extends StatelessWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
    
        itemBuilder: (context,index){
          return  Chip(label: Text(recommendedplaces[index].type),
          avatar: CircleAvatar(
            backgroundImage: AssetImage(recommendedplaces[index].image),
          ),
          backgroundColor: Colors.white,
          elevation: 0.4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          );
        },
         separatorBuilder: (context,index)=>
         const Padding(padding: EdgeInsets.only(right: 10)),
          itemCount: recommendedplaces.length,
          ),
    );
  }
}
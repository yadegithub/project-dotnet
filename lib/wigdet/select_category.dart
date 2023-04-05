import 'package:flutter/material.dart';



class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
    
      height: 80.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.house_outlined ,"Houses"),
          categoryButton(Icons.villa_rounded ,"Villa"),
          categoryButton(Icons.apartment_rounded ,"Apartement"),
          categoryButton(Icons.castle_rounded ,"Castles"),
        ],
      ),

    );
  }


  
}
      Widget categoryButton(IconData icon,String? text){

   return Container(
    margin: EdgeInsets.all(10.0),
   //padding: EdgeInsets.all(8.0),
    width: 100.0,
    height: 30.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey.shade100),
      color: Colors.grey

    ),
    child: InkWell(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
          icon,
          size: 32.0,
          color: Color(0xFF2972FF),),
          Text("$text")
        ],
      ),
    ),
   );
    
  }
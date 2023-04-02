import 'package:flutter/material.dart';
import 'package:project_pfe/wigdet/app_text.dart';



class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  
   ResponsiveButton({Key? key,
  this.width,
  this.isResponsive=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Flexible(
      child: Container(
    width: width,
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFF5d69b3),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       //Image.asset('lib/images/welcom3.jfif',
       //fit: BoxFit.cover),
       
      AppText(text: "Book Trip Now",),
      ],
    ),
      ),
    );
  }
}
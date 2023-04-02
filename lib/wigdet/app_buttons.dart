
import 'package:flutter/material.dart';
import 'package:project_pfe/wigdet/app_text.dart';




class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  String? text;
  IconData? icon;
  double size;
  final Color borderColor;
  bool? isicon;
   AppButtons({Key? key,
   this.isicon=false,
  required this.size,
  required this.color,
   this.text,
   this.icon,
  required this.backgroundcolor,
  required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
     return Container(
                          width: size,
                          height: size,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: borderColor,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color:backgroundcolor,
                            
                          ),
                          child: isicon==false?Center(child: AppText(text: text!, )):Center(child: Icon(icon,color: color,)),
                        );

  }
}
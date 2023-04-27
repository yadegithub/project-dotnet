



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconWidget extends StatelessWidget {
     final IconData icon;
     final Color color;

  const IconWidget({
    required this.icon,
    required this.color,
    super.key});

  @override
  Widget build(BuildContext context) => Container(
       padding: EdgeInsets.all(6),
       decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
       ),
       child: Icon(icon,color: Colors.white,),
  );
}
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
decoration: InputDecoration(
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),

  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),

  ),
  fillColor: Colors.grey,
  filled: true
),
         ),
           );
  }
}
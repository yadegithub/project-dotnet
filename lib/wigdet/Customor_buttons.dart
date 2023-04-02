import 'package:flutter/material.dart';




class CustomorButtons extends StatelessWidget {
  const CustomorButtons( {Key? key, required this.icon}) : super(key: key);
  final Widget icon;
  @override 
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color:Colors.grey.shade300),
        shape: BoxShape.circle
      ),
      child: IconButton(onPressed: (){},
      color: Colors.black54, 
      constraints: const BoxConstraints.tightFor(width: 40),
      icon: icon),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:project_pfe/wigdet/Customor_buttons.dart';
import 'package:project_pfe/wigdet/app_large_text.dart';
import 'package:project_pfe/wigdet/app_text.dart';


class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
     appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLargeText(text: 'Good Morning', color: Colors.black),
          AppText(text: 'Abdallahi dedag',color: Colors.black54,)
        ],
      ),
      actions:const [
       CustomorButtons(icon: Icon(Icons.search)),
       CustomorButtons(icon: Icon(Icons.notifications)
       ,
       ),
      ],
     ),
     );
    
    
  }
}
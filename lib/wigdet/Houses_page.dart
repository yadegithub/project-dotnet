


import 'package:flutter/material.dart';
import 'package:project_pfe/wigdet/bottom_buttons.dart';
import 'package:project_pfe/wigdet/house_card.dart';
import 'package:project_pfe/wigdet/search_field.dart';

import '../pages/navpages/customappbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              CustomAppBar(),
              SearchField(),
              HouseCard()
              
            ],
          ),
          BottomButtons(),
        ],
      ),
    );
  }
}

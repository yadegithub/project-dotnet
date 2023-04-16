import 'package:flutter/material.dart';
import 'package:project_pfe/pages/navpages/search_places_screen.dart';
import 'package:project_pfe/pages/navpages/simple_map_screen.dart';
import 'package:project_pfe/wigdet/app_large_text.dart';
import 'package:project_pfe/wigdet/app_text.dart';

import 'current_location_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images ={
    "welcom1.jpg":"welcom1",
    "welcom2.jfif":"welcom1",
    "welcom3.jfif":"welcom1",
    "img1.png":"welcom1",
  };
  @override
  Widget build(BuildContext context) {
      TabController _tabController =  TabController(length: 3, vsync: this);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Google Maps"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const SimpleMapScreen();
              }));
            }, child: const Text("Simple Map")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const CurrentLocationScreen();
              }));
            }, child: const Text("User current location")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const SearchPlacesScreen();
              }));
            }, child: const Text("Search Places")),


            // ElevatedButton(onPressed: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            //     return const NearByPlacesScreen();
            //   }));
            // }, child: const Text("Near by Places")),


            // ElevatedButton(onPressed: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            //     return const PolylineScreen();
            //   }));
            // }, child: const Text("Polyline between 2 points"))
          ],
        ),
      ),
    );
  }
}
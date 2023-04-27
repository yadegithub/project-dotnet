

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import 'package:project_pfe/constants/constants.dart';
import 'package:project_pfe/models/recommended_places.dart';
import 'package:project_pfe/pages/image_card.dart';
import 'package:project_pfe/pages/images_cards.dart';
import 'package:project_pfe/pages/navpages/customappbar.dart';

import '../constants/constent_style.dart';

class Dashborder extends StatefulWidget {
  const Dashborder({super.key});

  @override
  State<Dashborder> createState() => _DashborderState();
}

class _DashborderState extends State<Dashborder> {
  int _current=0;

 // ignore: non_constant_identifier_names
 List<T> map<T>(List list,Function handler){
    List<T> result =[];
    for(var i = 0; i<list.length;i++){
      result.add(handler(i,list[i]));
    }
    return result;
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        //backgroundColor: Mbackgroundcolor,
        title:SvgPicture.asset('assets/icons/apple_box.svg') ,
        elevation: 0,
      ),
      
    //  backgroundColor: Mbackgroundcolor,
      
    body: Container(
      
      child: ListView(
        physics: ClampingScrollPhysics(),
        children:<Widget> [
          SizedBox(height: 12),
          CustomAppBar(),
          SizedBox(height: 12),
          // Padding(padding: EdgeInsets.only(left: 16,right:24,bottom: 12),
          // child: Text('Hi, Mintmalainin  this promos for you',style: mtravelingtitle,),
          // ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16,right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                   padding: EdgeInsets.all(16.0),
                  height: 190,
                  // child: Swiper(
                  //   onIndexChanged: (index){
                  //  setState(() {
                  //    _current=index;
                  //   });
                  //   },
                  //   autoplay: true,
                  //   layout: SwiperLayout.DEFAULT,
                  //   itemCount: recommendedplaces.length,
                  //   itemBuilder: (BuildContext context,index){
                  //     return Container(
                  //        decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(12),
                  //         image: DecorationImage(
                  //           image: AssetImage(recommendedplaces[index].image),
                  //           fit: BoxFit.cover,
                            
                  //         ),
                          
                  //        ),
                  //     );

                  //   },
                  // ),
                ),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: map<Widget>(recommendedplaces,(index,image){
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(right: 10,left: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current ==index
                            ?Color(0XFF2C53B1)
                            :Colors.grey
                          ),
                        );
                      }),
                    ),
                    //more
                    Text('More...',style: mtravelingplaces,)
                  ],
                )
              ],
            ),
          )
       ,//service section
       SizedBox(height: 12,),
       Padding(padding: EdgeInsets.only(left: 16,right:24,bottom: 12),
          child: Text('Let\'s Start',style: mtravelingtitle,),
          ),
          Container(
            height: 144,
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                   
                  
                         Expanded(
                           child: Container(
                                                 margin: EdgeInsets.only(right: 8),
                                                 padding: EdgeInsets.only(left: 16),
                                                 height: 64,
                                                 decoration: BoxDecoration(
                           // color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFFE8E8F3),width: 1),
                                               
                                                 ),
                                                 child: Row(
                            children: <Widget>[
                              
                                   Image.asset('assets/icons/bus1.png',
                                  
                                
                                                            
                                  fit: BoxFit.cover,
                                  ),
                                
                              
                             // Image.asset('assets/icons/flight.png',
                              // width: 64,
                              // height: 64,
                              
                             // ),
                              Padding(padding: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                Text('Flight',style: mservicetitel,),
                                Text('Feel freedom',style: mservicesubtitel,)
                               ],
                              ),
                              )
                              
                            ],
                                                 ),
                                            ),
                         ),
                         Expanded(
                           child: Container(
                                                 margin: EdgeInsets.only(right: 8),
                                                 padding: EdgeInsets.only(left: 16),
                                                 height: 64,
                                                 decoration: BoxDecoration(
                           // color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFFE8E8F3),width: 1),
                                               
                                                 ),
                                                 child: Row(
                            children: <Widget>[
                              
                                   Image.asset('assets/icons/plane1.png',
                                   
                                                           
                                  
                                  ),
                                
                              
                              Padding(padding: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                Text('Trains',style: mservicetitel,),
                                Text('Security',style: mservicesubtitel,)
                               ],
                              ),
                              )
                              
                            ],
                                                 ),
                                            ),
                         ),
                      
                      
                  ],
                ),
                SizedBox(height: 16,),
                 Row(
                  children: <Widget>[
                   
                  
                         Expanded(
                           child: Container(
                                                 margin: EdgeInsets.only(right: 8),
                                                 padding: EdgeInsets.only(left: 16),
                                                 height: 64,
                                                 decoration: BoxDecoration(
                          //  color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFFE8E8F3),width: 1),
                                               
                                                 ),
                                                 child: Row(
                            children: <Widget>[
                              Image.asset('assets/icons/hotel.png',
                            
                              
                              ),
                              Padding(padding: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                Text('Hotel',style: mservicetitel,),
                                Text('Lets comfortob',style: mservicesubtitel,)
                               ],
                              ),
                              )
                              
                            ],
                                                 ),
                                            ),
                         ),
                         Expanded(
                           child: Container(
                                                 margin: EdgeInsets.only(right: 8),
                                                 padding: EdgeInsets.only(left: 16),
                                                 height: 64,
                                                 decoration: BoxDecoration(
                           // color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFFE8E8F3),width: 1),
                                               
                                                 ),
                                                 child: Row(
                            children: <Widget>[
                              Image.asset('assets/icons/recirculated.png',
                             
                              ),
                              Padding(padding: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                Text('Car Rental',style: mservicetitel,),
                                Text('Around the city',style: mservicesubtitel,)
                               ],
                              ),
                              )
                              
                            ],
                                                 ),
                                            ),
                         ),
                      
                      
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 18),
       //populair destination section
 Padding(padding: EdgeInsets.only(left: 16,right:24,bottom: 12),
          child: Text('Populair Destination!',style: mtravelingtitle,),
          ),
          Container(
            height: 140,
            child: ListView.builder(
              itemCount: recommendedplaces.length,
              padding: EdgeInsets.only(left: 16,right: 16),
              scrollDirection:Axis.horizontal,
              itemBuilder: (context,index){
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Container(
                  // height: 350,
                    width: 140,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xFFE8E8F3),width: 1),
                      boxShadow: [BoxShadow(
                       // color: Colors.white,
                        blurRadius: 4,
                        spreadRadius: 2
                      )]
                    ),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        
                         
                            CircleAvatar(
                              radius: 35,
                              
                              backgroundImage:AssetImage(recommendedplaces[index].image,) ,
                            ),
                            Text(recommendedplaces[index].location,style: mPopulairdestination,),
                           Text(recommendedplaces[index].type,style: mservicesubtitel,),
                          
                        
                        // Image.asset(recommendedplaces[index].image),
                        // Text(recommendedplaces[index].location,style: mPopulairdestination,),
                        //  Text(recommendedplaces[index].type,style: mservicesubtitel,),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 16,right:24,bottom: 12),
          child: Text('Travlog!',style: mtravelingtitle,),
          ),
        //  SizedBox(height: 10,),
          // Container(child: ImageCards()),
        ],
      ),
    ),
    );
  }
}
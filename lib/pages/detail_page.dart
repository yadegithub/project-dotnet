

import 'package:flutter/material.dart';
import 'package:project_pfe/wigdet/app_buttons.dart';
import 'package:project_pfe/wigdet/app_large_text.dart';
import 'package:project_pfe/wigdet/app_text.dart';
import 'package:project_pfe/wigdet/responsef_button.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars=3;
  int selectedindex =-1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
             Positioned(
              left: 0,
              right: 0,
              child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('lib/images/welcom1.jpg'),
                  fit: BoxFit.cover )
              ),
            )),
            Positioned(
              left: 20,
              top: 50,
              child: 
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                color: Colors.white,
                
                )
              ],
            )),
            Positioned(
              top: 330,
              child: Container(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
             width: MediaQuery.of(context).size.width,
             height: 500,
             
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              )
             ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLargeText(text: "Yosemite",color: Colors.black, ),
                    AppLargeText(text: "\$ 250",color: Color(0xFF5d69b3), )

                  ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.purple,),
                      SizedBox(width: 5,),
                      AppText(text: "USA, California", )

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Wrap(
                        children:List.generate(5,(index){
                          return Icon(Icons.star,color:index<gottenStars? Colors.yellow:Colors.black54);
                        }),
                      ),
                      SizedBox(width: 10,),
                      AppText(text: "(4.0)", )
                    ],
                  ),
                     SizedBox(height: 25,),
                     AppLargeText(text: "People",size: 20,color: Colors.black,),
                     SizedBox(height: 5,),
                     AppText(text: "Number of people in your group", ),
                      SizedBox(height: 10,),
                     Wrap(
                    children: List.generate(5,(index){
                       return InkWell(
                        onTap: (){
                           setState(() {
                             selectedindex=index;
                           });
                        },
                         child: Container(
                          margin: const EdgeInsets.only(right: 10),
                           child: AppButtons(size: 50, 
                           color: selectedindex==index?Colors.white:Colors.black,
                            backgroundcolor: selectedindex==index?Colors.black:Color(0xFF989acd), 
                            borderColor: selectedindex==index?Colors.black:Color(0xFF989acd),
                            text: (index+1).toString(),
                            //icon: Icons.favorite_border,
                            //isicon: true,
                            ),
                         ),
                       );
                      }),
                     ),
                     SizedBox(height: 20,),
                     AppLargeText(text: "Description",size: 20,color: Colors.black,),
                     SizedBox(height: 10,),
                     AppText(text: "ghjsgdugsb nxbfsydgfiasyu svdhgil.KSJDNSHDFV bnvhyfiyddgfaiuscfjb shbcccc udlgfbva,jknvcbydsfgvbb", ),
                   //  SizedBox(height: 5,),
              ],
             ),
            )),
            
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                  children: [
                    AppButtons(size: 60,
                     color: Color(0xFF5d69b3),
                      backgroundcolor: Colors.white,
                       borderColor: Color(0xFF5d69b3),
                       isicon: true,
                       icon: Icons.favorite_border,),
                       SizedBox(width: 20,),
                       ResponsiveButton(
                        isResponsive: true,

                       )
                  ],
            ))
           
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../data/data.dart';
import '../models/product_model.dart';
import '../models/recommended_places.dart';
import '../pages/details/details_screen.dart';



class recommended_destination extends StatelessWidget {
  const recommended_destination({super.key});

 Widget _buildProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    ProductModel productModel = productList[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsScreen(
              product: productModel,
            ),
          ),
        );
      },
      child: Container(
            margin: EdgeInsets.all(10.0),
         
            width: 210.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children:<Widget> [
                Positioned(
                  bottom: 15.0,
                  child: Container(
                    height: 120.0,
                    width: 200.0,
                    decoration:BoxDecoration(
                   color: Colors.white,
                   boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.3),
                      blurRadius: 20.0,
                      offset: Offset(5, 15)
                    )
                   ],
                   borderRadius: BorderRadius.circular(10.0)
                    ) ,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                         Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                      Text("St Regis Bora Bora",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF26A69A)
                      ),
                      ),
                      Icon(
                        Icons.star,
                        
                        size: 14,
                      ),
                      const Text("4.4",
                       style:TextStyle(
                       fontSize: 12
                      ),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                      //  margin: EdgeInsets.all(10),
                        child: Row(
                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              CupertinoIcons.location,
                            
                              size: 16,
                            ),
                            
                        SizedBox(width: 5,),
                        Text("French Polymesia",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        ),
                      
                          ],
                        ),
                      )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
    
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    topRight: Radius.circular(100.0)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0,2.0),
                        blurRadius: 6.0
                      )
                    ]
                  ),
                  child: Stack(
                    children:<Widget> [
                     
                         Image(
                          height: 180.0,
                          width: 180.0,
                      
                          image:AssetImage(recommendedplaces[index].image),
                          fit: BoxFit.cover,),
                      
                       Positioned(
                    right: 10,
                    top: appPadding /3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: myColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: IconButton(
                        icon: recommendedplaces[index].isFav
                            ? Icon(
                                Icons.favorite_rounded,
                                color: red,
                              )
                            : Icon(
                                Icons.favorite_border_rounded,
                                color: white,
                              ),
                         onPressed: () {
                        //   setState(() {
                        //     recommendedplaces[index].isFav= !recommendedplaces[index].isFav;
                        //   });
                         },
                      ),
                    ),
                  ),
                      Positioned(
                        left: 10.0,
                        bottom: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(recommendedplaces[index].type,
                            style: TextStyle(color: Colors.white,fontSize: 24.0,fontWeight: FontWeight.w600,letterSpacing: 1.2),
                            ),
                      
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  CupertinoIcons.location_circle,
                                  size: 10.0,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5.0,),
                                Text(
                                  recommendedplaces[index].location,
                                  style: TextStyle(color: Colors.white),),
                            //        Icon(
                            //   CupertinoIcons.heart,
                            //   color: Theme.of(context).primaryColor,
                            //   size: 25,
                            // ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
     
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 300.0,
      // Colors:[Colors.indigo[900],Colors.indigo[800],Colors.indigo[300],Colors.indigo[200]],
       color: white,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recommendedplaces.length,
          itemBuilder: (context, index) {
            return Container(
               child: _buildProducts(context, index),
              );
            
          },
        
        )
        );
    
    
  }
}













// class RecommendedDestination extends GetView<HomeController> {
//   const RecommendedDestination({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 20.w),
//             child: Text('recommended'.tr, style: TextStyles.title),
//           ),
//           SizedBox(
//             width: double.infinity,
//             height: 313.w,
//             child: controller.listRecommendedDestination.isEmpty &&
//                     !controller.isLoadingRecommendedDestination.value
//                 ? Center(
//                     child: Text('dataNotFound'.tr, style: TextStyles.text),
//                   )
//                 : ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: controller.isLoadingRecommendedDestination.value
//                         ? 5
//                         : controller.listRecommendedDestination.length,
//                     itemBuilder: (context, index) {
//                       if (controller.isLoadingRecommendedDestination.value) {
//                         return RecommendedDestinationShimmerItem(
//                           margin: EdgeInsets.only(
//                             left: 20.w,
//                             top: 16.w,
//                             bottom: 16.w,
//                           ),
//                         );
//                       } else {
//                         return RecommendedDestinationItem(
//                           onTap: () => Get.toNamed(
//                             Routes.DESTINATION,
//                             arguments: {
//                               'data':
//                                   controller.listRecommendedDestination[index]
//                             },
//                           ),
//                           data: controller.listRecommendedDestination[index],
//                           margin: EdgeInsets.only(
//                             left: 20.w,
//                             top: 16.w,
//                             bottom: 16.w,
//                           ),
//                         );
//                       }
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }

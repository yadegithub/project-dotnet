import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/constants/constants.dart';
import 'package:project_pfe/models/recommended_places.dart';



class Recomendation extends StatelessWidget {
  const Recomendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
     
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedplaces.length,
        itemBuilder:(BuildContext context,  int index) {
        return Container(
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
                    ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
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
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          
                      SizedBox(width: 5,),
                      Text("French Polymesia",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      ),
                      // Icon(
                      //       CupertinoIcons.heart,
                      //       color: Theme.of(context).primaryColor,
                      //       size: 16,
                      //     ),
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
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),

                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  topRight: Radius.circular(100.0)
                      ),
                      child: Image(
                        height: 180.0,
                        width: 180.0,
                    
                        image:AssetImage(recommendedplaces[index].image),
                        fit: BoxFit.cover,),
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
                                 Icon(
                            CupertinoIcons.heart,
                            color: Theme.of(context).primaryColor,
                            size: 25,
                          ),
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
        );
      }
      )
      );
    
  }
}
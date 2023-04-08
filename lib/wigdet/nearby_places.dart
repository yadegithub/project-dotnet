import 'package:flutter/material.dart';

import 'package:project_pfe/constants/constants.dart';
import 'package:project_pfe/models/recommended_places.dart';


class Courses extends StatelessWidget {
  Widget _buildCourses(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
   // RecommandedPlaceModel course = RecommandedPlaceModel[index];

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: appPadding, vertical: appPadding / 2),
      child: Container(
        height: size.height * 0.2,
        decoration: BoxDecoration(
         color: white,
            
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: black.withOpacity(0.3),
                  blurRadius: 30.0,
                  offset: Offset(10, 15))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Row(
            children: [
              Container(
                width: size.width * 0.3,
                height: size.height * 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage(recommendedplaces[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size.width * 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: appPadding / 2, top: appPadding / 1.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recommendedplaces[index].type,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Icon(Icons.folder_open_rounded,color: black.withOpacity(0.3),),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(recommendedplaces[index].location,style: TextStyle(color: black.withOpacity(0.3),),)
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time_outlined,color: black.withOpacity(0.3),),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(recommendedplaces[index].rating.toString() + ' min',style: TextStyle(color: black.withOpacity(0.3),),)
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
         [
         
          Expanded(
              child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: recommendedplaces.length,
            itemBuilder: (context, index) {
              return _buildCourses(context, index);
            },
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:project_pfe/constants/constants.dart';

class BottomButtons extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (() {
       // getcurrentlocation();
      }),
      child: Padding(
        padding: const EdgeInsets.only(bottom: appPadding),
        child: Container(
          width: size.width * 0.4,
          height: 60,
          decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(
              color: darkBlue.withOpacity(0.6),
              offset: Offset(0,10),
              blurRadius: 10
            )]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon((Icons.map_outlined),color: white,),
              Text(' Map view',style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),)
            ],
          ),
        ),
      ),
    );
  }
  var locationMessage="";

  // void getcurrentlocation() async{
  //   var position =await Geolocator.getCurrentPosition(desiredAccuracy:LocationAccuracy.high);
  //   var lastposition = await Geolocator.getLastKnownPosition();
  //   print(lastposition);

  //   setState(() {
  //         locationMessage="$position.latitude,$position.longitude";
  //       });
        
  // }
}

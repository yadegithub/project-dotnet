import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project_pfe/login_with_facbook.dart';
import 'package:project_pfe/login_with_googel.dart';


import 'package:project_pfe/wigdet/app_large_text.dart';
import 'package:project_pfe/wigdet/app_text.dart';
import 'package:project_pfe/wigdet/button.dart';



class WelcomPage extends StatefulWidget {
   WelcomPage({Key? key}) : super(key: key);

 // final GoogleSignIn _googleSignIn=GoogleSignIn();

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Image.asset(
            'lib/images/welcom1.jpg',
            height: double.infinity,
            
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top:150,left: 20,right: 20),
        child: Row(
          children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               AppLargeText(text: "Trips",color: Colors.black, ),
      AppText(text: "Mountain",size: 30,),
      SizedBox(height: 20,),
      Container(
         width: 250,
        child:AppText(text:"Mountain hikes give you an icoreble sense of frrdom along with rndurance test",
        color:Colors.white,
        
        size: 14,
      )
      ),
      //Button(),
            ],
           )
              ],
            )
              ),
              
           
              SizedBox(height: 30,),
              //login button
              InkWell(
                onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> LoginWitheFacbook()
     ));
              },
                child: Container(
                  margin: const EdgeInsets.only(top: 300),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Image.asset(
                    'lib/images/img1.png',
                    height: 70,
                    width: 70,
                    ),
                    SizedBox(width: 10,),
                    AppLargeText(text: "Continue with Facebook", color: Colors.black,size: 16,)
                ],
              ),
              ),
              ),
SizedBox(height: 20,),
 InkWell(
  onTap: (){
    Navigator.push(context,
     MaterialPageRoute(builder: (context)=> LoginWitheFacbook()
     )
     );
    // _googleSignIn.signIn().then((value){
       
    //    String userName = value!.displayName!;
    //    String profilepicture = value.photoUrl!;
    // });
    
  },
   child:
    InkWell(
      onTap: (){
        Navigator.push(context,
     MaterialPageRoute(builder: (context)=> LoginWithGoogel()
     )
     );
      },
      child: Container(
                   // margin: const EdgeInsets.only(top: 300),
     height: 50,
     width: double.infinity,
     decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
     ),
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(
          'lib/images/img2.png',
          height: 70,
          width: 70,
          ),
          SizedBox(width: 10,),
          AppLargeText(text: "Continue with Google", color: Colors.black,size: 16,)
      ],
     ),
     ),
    ),
 
 ),
 
//SizedBox(height: MediaQuery.of(context).size.height=0.02

            ],
          )
        ],
      ),
    );
  }

  
}
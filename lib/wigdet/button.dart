import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF4F6FA),
      body: SafeArea(
        child:Center(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Material(
              elevation: 5,
              color: const Color(0xff345C67),
              borderRadius: BorderRadius.circular(15),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width*1,
                onPressed: (() {
                  
                }),
                child:Stack(
                  alignment: Alignment.center,
                  children: [
                    const Text("login",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                    Container(
                      padding:const EdgeInsets.all(7),
                      decoration:const BoxDecoration(
                        color: Color(0xff203530),
                        shape: BoxShape.circle
                      ),
                      child:const Icon(Icons.arrow_forward,color: Colors.white,),
                    )
                   ],
                    )
                  ],
                ) ,
              ),
            ),
          ),) ),
    );
    
  }
}
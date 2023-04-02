import 'package:flutter/material.dart';


class loginpage extends StatelessWidget{
   

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(child: Center(
        child: Column(
          children: [
          SizedBox(height: 50),
            //logo
           Icon(
              Icons.lock,
                 size:100,

                      ),
                      SizedBox(height: 50,),
           //weelcome back,you've been missed
           Text(
            "welcome back,you've been missed!",
            style: TextStyle(color:Colors.grey),
           ),
           SizedBox(height: 25),
           //username
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          
decoration: InputDecoration(
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),

  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),

  ),
  fillColor: Colors.grey,
  filled: true,
  hintText: 'Username',
  hintStyle: TextStyle(color: Colors.black)
),
         ),
           ),
        SizedBox(height: 10),


        //password
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
decoration: InputDecoration(
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),

  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),

  ),
  fillColor: Colors.grey,
  filled: true,
  hintText: 'Password',
  hintStyle: TextStyle(color: Colors.black)
),
         ),
           ),
             SizedBox(height: 10),

        //froget password
       Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Froget Password?",
            style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        ),
        SizedBox(height: 10),
        //signe in button
        
         // onTap: ,
          Container(
            padding: const EdgeInsets.all(25) ,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
              

            ),
            child: const Center(child:
              Text("Sign In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            ),
            ),
            ),
          
         SizedBox(height: 10),
        //or continue with
Padding(padding: 
const EdgeInsets.symmetric(horizontal: 25.0),
child: Row(
  children: [
    Expanded(child:Divider(thickness: 0.5,
    color: Colors.grey,)
    ),
    Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Text("Or contunue with",
    style: TextStyle(color:Colors.grey),
    ),
    ),
    Expanded(child: Divider(thickness: 0.5,
    color: Colors.grey,))
  ],
),
),
SizedBox(height: 10),
        //googel appel signe in buttons
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
children: [
  Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
//border: Border.all(color: Colors.white),
borderRadius: BorderRadius.circular(16),
color: Colors.white,

    ),
    child:Image.asset('lib/images/img1.png',
  width: 80,
  height: 40,
  ),),
 
],
        )
          ],
        ),
      ),)
    );
  }
}
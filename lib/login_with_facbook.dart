import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginWitheFacbook extends StatefulWidget {
  const LoginWitheFacbook({Key? key}) : super(key: key);

  @override
  State<LoginWitheFacbook> createState() => _LoginWitheFacbookState();
}

class _LoginWitheFacbookState extends State<LoginWitheFacbook> {
  String useremail="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login with facbook'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("User email :"),
                  Text(useremail)
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              signInWithFacebook();
              setState(() {
                
              });
            },
             child:Text('login')),
          
           ElevatedButton(onPressed: (){},
             child:Text('logout'))
          ],
        ),
      ),
    );
    
  }
  
  Future<UserCredential> signInWithFacebook() async {
  // Trigger the sign-in flow
   final  loginResult;
   loginResult = await FacebookAuth.instance.login(
    permissions:['email','public_profile','user_birthday']
  );
  

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken.token);

 final userData = await FacebookAuth.instance.getUserData();

 useremail =userData['email'];

  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}
}
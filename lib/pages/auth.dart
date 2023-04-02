import 'package:firebase_auth/firebase_auth.dart';
class AuthService{

final FirebaseAuth _auth= FirebaseAuth.instance;


//sign in anon
Future signInAnon() async{

try{


    //AuthResult result = await _auth.signInAnonymously();
    return  ;

}catch(e) {
  print(e.toString());
  return null;
}


  
}




}
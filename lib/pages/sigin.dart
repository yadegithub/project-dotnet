import 'package:flutter/material.dart';
import 'package:project_pfe/pages/auth.dart';



class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
  
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.brown[100],
appBar: AppBar(
  backgroundColor: Colors.brown[400],
  elevation: 0.0,
  title: Text('Sign in to brew crew'),
),
body: Container(
  padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
  child: ElevatedButton(
    child: Text('Sign in anon'),
    onPressed: () async{
      
    },
  ),
),
    );
  }
}
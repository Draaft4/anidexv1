import 'package:flutter/material.dart';
import 'package:anidexv1/screen/login_signup.dart';
void main(){
  runApp(MyApp());
  }
  
class MyApp extends StatelessWidget{
  const MyApp({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      home: LoginSignupScreen(),
    );
  }

}
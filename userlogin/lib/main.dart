import 'package:flutter/material.dart';
import 'user_Location.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String phone;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute:'login',
     routes: {
       'login': (context) => Login(),
       'user_Location': (context) => UserLocation(),
     },
   );
  }
}


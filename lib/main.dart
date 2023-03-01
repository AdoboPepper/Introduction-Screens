import 'package:flutter/material.dart';
import 'IntroScreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
       "/" : (context) => IntroScreen(),
     },

    );
  }
}

import 'package:flutter/material.dart';
import 'location_details.dart';
import 'utils/styles.dart';

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
         appBarTheme: AppBarTheme(
           textTheme: TextTheme(title: AppBarTextStyle)
         ),
         textTheme: TextTheme(
           title: TitleTextStyle,
           body1: Body1TextStyle
         ),
      ),
      home: LocationDetails()
    );
  }

}
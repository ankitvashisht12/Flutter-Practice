import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'hello.dart';

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
        home: Hello(),
      );
  }

}
import 'package:flutter/material.dart';
import './screens/home.dart';

class MyApp extends StatelessWidget {

  var _cameras;

  MyApp(this._cameras);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FunCam',
      theme: ThemeData(
        primaryColor: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(_cameras),
    );
  }
}
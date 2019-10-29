import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'utils/textSection.dart';

class Location extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextSection(Colors.red),
          TextSection(Colors.green), 
          TextSection(Colors.blue),
        ],
      )
    );
  }


}
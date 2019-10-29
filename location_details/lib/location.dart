import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'utils/image_banner.dart';
import 'utils/text_section.dart';


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
          ImageBanner('assets/images/colorful.jpg'),
          TextSection('Summary', 'Summary01'),
          TextSection('Summary', 'Summary02'), 
          TextSection('Summary', 'Summary03'),
        ],
      )
    );
  }


}
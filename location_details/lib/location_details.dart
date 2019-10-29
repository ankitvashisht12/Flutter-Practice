import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'utils/image_banner.dart';
import 'utils/text_section.dart';
import './models/location.dart';


class LocationDetails extends StatelessWidget{

  final int _locationID;

  LocationDetails(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationID);
   

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner(location.imagePath),
        ]..addAll(textSection(location)),
      )
    );
  }

  List<Widget> textSection(Location location){
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }


}
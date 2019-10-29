import 'package:flutter/material.dart';
import 'package:location_details/location_details.dart';
import 'locations.dart';
import 'utils/styles.dart';


const LocationsRoute = '/';
const LocationDetailsRoute = '/location_details';


class MyApp extends StatelessWidget{
  
  

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      onGenerateRoute: _routes(),
      theme: ThemeData(
         appBarTheme: AppBarTheme(
           textTheme: TextTheme(title: AppBarTextStyle)
         ),
         textTheme: TextTheme(
           title: TitleTextStyle,
           body1: Body1TextStyle
         ),
      ),
      home: Locations()
      
    );
  }

  RouteFactory _routes(){
    return (settings){
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch(settings.name){
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailsRoute:
          screen = LocationDetails(arguments['id']);
          break;
        default :
          return null;
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

}
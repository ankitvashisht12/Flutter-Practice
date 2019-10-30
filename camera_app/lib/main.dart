import 'package:flutter/material.dart';
import 'app.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async{
  
  cameras = await availableCameras();
  runApp(MyApp(cameras));
}


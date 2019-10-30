import 'package:flutter/material.dart';
import 'camera_screen.dart';

class Home extends StatelessWidget {

  var _cameras;

  Home(this._cameras);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraScreen(_cameras),
    );
  }
}   
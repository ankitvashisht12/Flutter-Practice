import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  
  List<CameraDescription> _cameras;

  CameraScreen(this._cameras);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  
  CameraController controller;

  @override
  void initState(){
    super.initState();
    controller = CameraController(widget._cameras[1], ResolutionPreset.medium );
    controller.initialize().then((_){
      if(!mounted){
        return;
      }
      setState(() {});
    });
  }
  
  @override
  void dispose() {
    controller?.dispose(); // checking if controller is not null then dispose
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    if(!controller.value.isInitialized){
      return Container();
    }

    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
  }
}
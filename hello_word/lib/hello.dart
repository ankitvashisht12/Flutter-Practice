import 'package:flutter/material.dart';

class Hello extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Text('hello there ! Welcome to my world.'),
    );
  }
}
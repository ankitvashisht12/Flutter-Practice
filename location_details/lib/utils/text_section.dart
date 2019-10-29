import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class TextSection extends StatelessWidget{

  final _color;

  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('hi'),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class TextSection extends StatelessWidget{

  final String _title;
  final String _body;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(_title)
        Text(_body)
      ],
    );
  }

}
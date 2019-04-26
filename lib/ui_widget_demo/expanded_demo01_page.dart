import 'package:flutter/material.dart';

class ExpandedDemo01Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Container(
          width: 48,
          height: 48,
          color: Colors.red,
        ),
        new Expanded(
            child: new Container(
          height: 48,
          color: Colors.blue,
        ))
      ],
    );
  }
}

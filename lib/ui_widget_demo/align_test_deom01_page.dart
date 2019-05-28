import 'package:flutter/material.dart';

class AlignTestDemo01Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment(0.0, 0.0),
      widthFactor: 1.0,
      heightFactor: 1.0,
      child: Text(
        "Align",
        style: TextStyle(decoration: TextDecoration.none),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_flutter_study/ui_widget_demo/paint_canvas_demo01/custom_view.dart';

class PaintAndCanvasDemo01Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new CustomViewPage(),
        ],
      ),
    );
  }
}

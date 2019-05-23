import 'package:flutter/material.dart';
import 'package:my_flutter_study/ui_widget_demo/paint_canvas_demo01/circle_progress_bar.dart';

class PaintAndCanvasDemo01Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      width: 1000,
      height: 1000,
      child: new Column(
        children: <Widget>[
//          new CustomViewPage(),
          new CircleProgressBar(
            progress: 50,
            outRadius: 120,
            shadowWidth: 20,
          )
        ],
      ),
    );
  }
}

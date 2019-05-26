import 'package:flutter/material.dart';
import 'package:my_flutter_study/ui_widget_demo/paint_canvas_demo01/circle_progress_bar.dart';

class PaintAndCanvasDemo01Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PaintAndCanvasDemo01PageState();
  }


}

class _PaintAndCanvasDemo01PageState extends State<PaintAndCanvasDemo01Page> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    this._controller=AnimationController(duration:Duration(milliseconds: 10000) ,vsync: this,);
    this._animation=Tween(begin:0.0,end:100.0).animate(this._controller);

    this._controller.addListener((){
      print("**AnimationController.Listener VoidCallback**${this._animation.value}");
      setState(() {
      });
    });

    this._controller.addStatusListener((AnimationStatus status){
      print("**AnimationController.StatusListener**${status}");
      if(status==AnimationStatus.dismissed){
        this._controller.forward(from: 0);
      }else if(status==AnimationStatus.completed){
        this._controller.reverse(from: 100);
      }
    });
    this._controller.forward(from:0.0);
  }

  @override
  void dispose() {
    super.dispose();
    this._controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      width: 1000,
      height: 1000,
      padding: EdgeInsets.only(left: 20,top: 40,),
      child: new Column(
        children: <Widget>[
//          new CustomViewPage(),
          new CircleProgressBar(
            progress: _animation.value.roundToDouble(),
            outRadius: 120,
            shadowWidth: 20,
          )
        ],
      ),
    );
  }

}

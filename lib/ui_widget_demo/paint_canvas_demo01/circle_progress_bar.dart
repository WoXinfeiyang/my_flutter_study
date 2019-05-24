import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgressBar extends StatefulWidget {
  double outRadius;
  double shadowWidth;
  Color shadowColor;
  Color progressColor;

  double progress;

  CircleProgressBar(
      {@required this.progress,
      @required this.outRadius,
      @required this.shadowWidth,
      this.shadowColor = Colors.grey,
      this.progressColor = Colors.red});

  @override
  State<StatefulWidget> createState() {
    return _CircleProgressBarState();
  }
}

class _CircleProgressBarState extends State<CircleProgressBar>
    with SingleTickerProviderStateMixin {
  double _width;
  Size _size;
  double _fontSize=20.0;
  @override
  void initState() {
    _width = widget.outRadius * 2;
    _size = new Size(_width, _width);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CustomPaint(
      size: _size,
      child: Container(
        padding: EdgeInsets.only(left:widget.outRadius-_fontSize,top:widget.outRadius-_fontSize),
        child: new Text(
          "${widget.progress}%",
          style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: _fontSize),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      painter: _CircleProgressBarPainter(
          progress: widget.progress,
          outRadius: widget.outRadius,
          shadowWidth: widget.shadowWidth,
          shadowColor: widget.shadowColor,
          progressColor: widget.progressColor),
    );
  }
}

class _CircleProgressBarPainter extends CustomPainter {
  double progress;
  double outRadius;
  double shadowWidth;
  Color shadowColor;
  Color progressColor;

  Paint _progressPaint;
  Paint _backgroundPaint;
  Offset _center;
  _CircleProgressBarPainter(
      {@required this.progress,
      @required this.outRadius,
      @required this.shadowWidth,
      this.shadowColor = Colors.grey,
      this.progressColor = Colors.red}) {
    this._progressPaint = new Paint()
      ..color = this.progressColor
      ..strokeCap = StrokeCap.round /*画笔笔触类型*/
      ..style = PaintingStyle.stroke /*绘画风格，默认为填充*/
      ..strokeWidth = shadowWidth; //画笔的宽度

    this._backgroundPaint = new Paint()
      ..color = this.shadowColor
      ..strokeCap = StrokeCap.round /*画笔笔触类型*/
      ..style = PaintingStyle.stroke /*绘画风格，默认为填充*/
      ..strokeWidth = shadowWidth; //画笔的宽度
    _center = new Offset(this.outRadius, this.outRadius);
  }
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(_center, this.outRadius, this._backgroundPaint);
    Rect rect= Rect.fromCircle(center:_center,radius: this.outRadius);
    canvas.drawArc(rect,0,_degreeToRadian(progress/100*360),false,this._progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  double _degreeToRadian(double degree){
    return pi/180*degree;
  }
}

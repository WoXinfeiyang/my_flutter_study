import 'package:flutter/material.dart';

class CircleProgressBar extends StatefulWidget {
  double outRadius;
  double strokeWidth;
  Color shadowColor;
  Color progressColor;

  double progress;

  CircleProgressBar(
      {@required this.progress,
      @required this.outRadius,
      @required this.strokeWidth,
      this.shadowColor = Colors.grey,
      this.progressColor = Colors.red});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class _CircleProgressBarState extends State<CircleProgressBar>
    with SingleTickerProviderStateMixin {
  Size _size;
  @override
  void initState() {
    double width = widget.outRadius * 2;
    _size = new Size(width, width);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CustomPaint(
      size: _size,
      child: new Text(
        "${widget.progress}%",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class _CircleProgressBarPainter extends CustomPainter {
  double progress;
  double outRadius;
  double strokeWidth;
  Color strokeColor;
  Color progressColor;

  Paint _progressPaint;
  Paint _backgroundPaint;

  _CircleProgressBarPainter(
      {@required this.progress,
      @required this.outRadius,
      @required this.strokeWidth,
      this.strokeColor,
      this.progressColor}) {}
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}

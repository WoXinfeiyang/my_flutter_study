import 'package:flutter/material.dart';

class StaggerDemo01Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StaggerDemo01PageState();
  }
}

class _StaggerDemo01PageState extends State<StaggerDemo01Page>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    this._animationController = new AnimationController(
        duration: Duration(
          milliseconds: 5000,
        ),
        vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: StaggerAnimaiton(this._animationController),
      onTap: () {
        _playAnimation();
      },
    );
  }

  Future<Null> _playAnimation() async {
    try {
      /*await必须在async内部使用*/
      await this._animationController.forward().orCancel;
      await this._animationController.reverse().orCancel;
    } on TickerCanceled {}
  }
}

class StaggerAnimaiton extends StatelessWidget {
  AnimationController animationController;
  Animation<double> heightAnimation;
  Animation<Color> colorAnimation;
  Animation<EdgeInsets> paddingAnimation;

  StaggerAnimaiton(@required AnimationController this.animationController) {
    heightAnimation = Tween<double>(begin: 0, end: 300).animate(CurvedAnimation(
        parent: this.animationController, curve: Interval(0, 0.6)));
    colorAnimation = ColorTween(begin: Colors.green, end: Colors.red).animate(
        CurvedAnimation(
            parent: this.animationController, curve: Interval(0, 0.6)));

    paddingAnimation = EdgeInsetsTween(
            begin: EdgeInsets.only(
              left: 0,
            ),
            end: EdgeInsets.only(left: 100))
        .animate(CurvedAnimation(
            parent: this.animationController, curve: Interval(0.6, 1.0)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
        animation: this.animationController,
        builder: (context, child) {
          return Container(
            width: 600,
            height: 600,
            color: Colors.brown,
            alignment: Alignment.bottomLeft,
            padding: this.paddingAnimation.value,
            child: Container(
              width: 50,
              height: this.heightAnimation.value,
              color: this.colorAnimation.value,
            ),
          );
        });
  }
}

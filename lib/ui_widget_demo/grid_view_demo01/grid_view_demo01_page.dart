import 'package:flutter/material.dart';
import 'package:my_flutter_study/model/beauty_star.dart';

class GridViewDemo01Page extends StatelessWidget {
  List<BeautyStar> allBeautyStars = BeautyStar.getAllBeautyStars();

  int crossAxisCount;

  GridViewDemo01Page(this.crossAxisCount);

  @override
  Widget build(BuildContext context) {
    print("allBeautyStars.length=" + allBeautyStars.length.toString());

    // TODO: implement build
    return new GridView.count(
      crossAxisCount: this.crossAxisCount,
      padding: new EdgeInsets.all(10.0),
      children: allBeautyStars.map((BeautyStar beautyStar) {
        print("beautyStar:image=" +
            beautyStar.image +
            ",beautyStar.des=" +
            beautyStar.des +
            "\n");
        return _getGridViewItemV01(context, beautyStar);
      }).toList(),
    );
  }

  Widget _getGridViewItemV01(BuildContext context, BeautyStar beautyStar) {
    return Card(
      elevation: 4.0,
      child: new Container(
        alignment: Alignment.center,
        width: 1920,
        height: 1094,
        child: new Stack(
          children: <Widget>[
            new Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                beautyStar.image,
                fit: BoxFit.cover,
                width: 1920,
                height: 1080,
              ),
            ),
            new Align(
              alignment: Alignment.bottomCenter,
              child: new Text(
                beautyStar.des,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getGridViewItemV02(BuildContext context, BeautyStar beautyStar) {
    return new Container(
        alignment: Alignment.center,
        width: 192,
        height: 108,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            new Image.asset(
              beautyStar.image,
              fit: BoxFit.cover,
              width: 192,
              height: 108,
            ),
//            new Divider(
//              height: 10,
//              color: Colors.red,
//            ),
//            new Text(
//              beautyStar.des,
//              style: TextStyle(
//                fontSize: 14,
//                fontWeight: FontWeight.bold,
//              ),
//            ),
          ],
        ));
  }

  Widget _getGridViewItemV03(BuildContext context, BeautyStar beautyStar) {
    return Card(
      elevation: 4.0,
      child: new Container(
        alignment: Alignment.center,
        width: 192,
        height: 122,
        child: new Stack(
          alignment: Alignment.center,
          children: <Widget>[
            new Positioned(
              left: 0,
              top: 0,
              width: 192,
              height: 108,
              child: Image.asset(
                beautyStar.image,
                fit: BoxFit.cover,
                width: 192,
                height: 108,
              ),
            ),
            new Positioned(
              top: 108,
              height: 14,
              child: new Text(
                beautyStar.des,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

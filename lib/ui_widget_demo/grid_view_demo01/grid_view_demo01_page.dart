import 'package:flutter/material.dart';
import 'package:my_flutter_study/model/beauty_star.dart';

class GridViewDemo01Page extends StatelessWidget {
  List<BeautyStar> allBeautyStars = BeautyStar.getAllBeautyStars();

  @override
  Widget build(BuildContext context) {
    print("allBeautyStars.length=" + allBeautyStars.length.toString());

    // TODO: implement build
    return new GridView.count(
      crossAxisCount: 2,
      padding: new EdgeInsets.all(10.0),
      children: allBeautyStars.map((BeautyStar beautyStar) {
        print("beautyStar:image=" +
            beautyStar.image +
            ",beautyStar.des=" +
            beautyStar.des +
            "\n");
        return _getGridViewItem(context, beautyStar);
      }).toList(),
    );
  }

  Widget _getGridViewItem(BuildContext context, BeautyStar beautyStar) {
    return Card(
      elevation: 4.0,
      child: new Column(
        children: <Widget>[
          Image.asset(
            beautyStar.image,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Text(
                beautyStar.des,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

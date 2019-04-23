import 'package:flutter/material.dart';
import 'package:my_flutter_study/ui_widget_demo/grid_view_demo01/grid_view_demo01_page.dart';

class GrideViewDemo01HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new GrideViewDemo01HomeState();
  }
}

class GrideViewDemo01HomeState extends State<GrideViewDemo01HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridViewDemo01"),
      ),
      body: _getHomeBody(context),
    );
  }

  Widget _getHomeBody(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return GridViewDemo01Page(2);
    } else {
      return GridViewDemo01Page(3);
    }
  }
}

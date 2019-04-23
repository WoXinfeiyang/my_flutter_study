import 'package:flutter/material.dart';

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
      body: new Text("GridViewDemo01"),
    );
  }
}

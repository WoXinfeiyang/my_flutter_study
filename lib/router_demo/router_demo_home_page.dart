import 'package:flutter/material.dart';

class RouterDemoHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RouterDemoHomeState();
  }
}

class RouterDemoHomeState extends State<RouterDemoHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("路由导航"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.all(20),
            color: Colors.orangeAccent,
            child: new Text(
              "push页面并接收返回值",
              textAlign: TextAlign.center,
            ),
          ),
          new Container(
            margin: EdgeInsets.all(20),
            color: Color.fromARGB(0, 1, 0, 0),
            child: new Text(
              'push 页面并传递参数过去',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

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
              height: 70,
              /*设置Container内部child Widget的对齐方式*/
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              color: Color.fromARGB(255, 0, 255, 0),
              child: new RaisedButton(
                onPressed: () {},
                color: Color.fromARGB(255, 255, 104, 104),
                highlightColor: Color.fromARGB(255, 255, 0, 0),
                child: new Text("push一个新页面并处理新页面的返回值"),
              )),
          new Divider(
            height: 4,
            color: Colors.blue[900],
          ),
          new Container(
              height: 70,
              /*设置Container内部child Widget的对齐方式*/
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              color: Color.fromARGB(255, 0, 255, 0),
              child: new RaisedButton(
                onPressed: () {},
                color: Color.fromARGB(255, 255, 104, 104),
                highlightColor: Color.fromARGB(255, 255, 0, 0),
                child: new Text("push一个新页面并向新页面传递参数"),
              )),
          new Divider(
            height: 4,
            color: Colors.blue[900],
          ),
        ],
      ),
    );
  }
}

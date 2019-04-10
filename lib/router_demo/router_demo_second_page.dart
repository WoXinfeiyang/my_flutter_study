import 'package:flutter/material.dart';

class RouterDemoSecondPage extends StatefulWidget {
  String title;

  RouterDemoSecondPage({this.title});

  @override
  State<StatefulWidget> createState() {
    return new RouterDemoSecondState();
  }
}

class RouterDemoSecondState extends State<RouterDemoSecondPage> {
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
                onPressed: () {
                  Navigator.of(context).pop("来自RouterDemoSecondPage的数据!");
                },
                color: Color.fromARGB(255, 255, 104, 104),
                highlightColor: Color.fromARGB(255, 255, 0, 0),
                child: new Text("pop页面并返回数据给上一个页面"),
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
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Color.fromARGB(255, 255, 104, 104),
                highlightColor: Color.fromARGB(255, 255, 0, 0),
                child: new Text(
                    "上个页面传递数据为:${widget.title != null ? widget.title : ''}"),
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

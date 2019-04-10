import 'package:flutter/material.dart';
import 'package:my_flutter_study/router_demo/router_demo_second_page.dart';

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
                onPressed: () {
                  /*静态路由*/
                  Navigator.of(context)
                      .pushNamed("router/second")
                      .then((value) {
                    print("新页面返回数据为:" + value.toString());
                    _showDialog(context, value.toString());
                  });
                },
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
                onPressed: () {
                  /*动态路由*/
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return RouterDemoSecondPage(title: "来自RouterDemoHomePage");
                  }));
                },
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

  _showDialog(BuildContext context, String text) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return new Container(
          alignment: Alignment.center,
          color: Colors.blue[900],
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('${text}',
                  style: new TextStyle(
                    color: Color.fromARGB(255, 00, 0, 0),
                  )),
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Color.fromARGB(255, 255, 104, 104),
                highlightColor: Color.fromARGB(255, 255, 0, 0),
                child: new Text("关闭",
                    style: new TextStyle(
                      color: Color.fromARGB(255, 00, 0, 0),
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}

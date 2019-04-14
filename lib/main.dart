import 'package:flutter/material.dart';
import './platform_channel/platform_channel_home_page.dart';

import './router_demo/router_demo_home_page.dart';
import './router_demo/router_demo_second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFlutterStudyHomePage(title: 'My Flutter Study'),
      routes: <String, WidgetBuilder>{
        'router/home': (context) => new RouterDemoHomePage(),
        'router/second': (context) => new RouterDemoSecondPage(),
        'router/platform_channel_home_page':(context)=>new PlatformChannelHomePage(),
      },
    );
  }
}

class MyFlutterStudyHomePage extends StatefulWidget {
  MyFlutterStudyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyFlutterStudyHomePageState createState() => _MyFlutterStudyHomePageState();
}

class _MyFlutterStudyHomePageState extends State<MyFlutterStudyHomePage> {
  List<Map<String, String>> list = new List<Map<String, String>>();

  @override
  void initState() {
    super.initState();
    list.add({'title': '路由导航', 'router': 'router/home'});
    list.add({'title':'Flutter与Android原生代码通信','router':'router/platform_channel_home_page'});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: new ListView.builder(
          // 这句是在list里面的内容不足一屏时，list可能会滑不动，加上就一直都可以滑动
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, int index) =>
              _createListViewItem(context, list[index])),
    );
  }

  _createListViewItem(
      BuildContext context, Map<String, String> listViewItemData) {
    return new Column(
      children: <Widget>[
        new Container(
            alignment: Alignment.center,
            height: 45,
            color: Color.fromARGB(255, 255, 255, 255),
            child: new RaisedButton(
              onPressed: () {
                print("ListViewItem被点击了!listViewItemData=" +
                    listViewItemData.toString());
                if (listViewItemData['router'] !=null) {
                  Navigator.of(context).pushNamed(listViewItemData['router']);
                }
              },
              color: Color.fromARGB(255, 255, 255, 255),
              highlightColor: Color.fromARGB(255, 255, 0, 0),
              elevation: 0,
              child: new Text(
                listViewItemData['title'],
                style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            )),
        /*添加Divider*/
        new Divider(
          height: 2,
          color: Colors.green,
        )
      ],
    );
  }
}

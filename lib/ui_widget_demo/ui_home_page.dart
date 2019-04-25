import 'package:flutter/material.dart';
import 'package:my_flutter_study/ui_widget_demo/animation_demo/logo_animation_widget.dart';
import 'package:my_flutter_study/ui_widget_demo/grid_view_demo01/grid_view_demo01_home.dart';

class UiWidgetDemoHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UiHomePage(title: 'Flutter常见UI控件'),
      routes: <String, WidgetBuilder>{
        'router/gridview_demo01': (context) => new GrideViewDemo01HomePage(),
        'router/logo_animation_widget': (context) => new LogoAnimationWidget(),
      },
    );
  }
}

class UiHomePage extends StatefulWidget {
  UiHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UiHomePageState createState() => _UiHomePageState();
}

class _UiHomePageState extends State<UiHomePage> {
  List<Map<String, String>> list = new List<Map<String, String>>();

  @override
  void initState() {
    super.initState();
    list.add({'title': 'GridViewDemo01', 'router': 'router/gridview_demo01'});
    list.add({
      'title': 'LogoAnimationWidget',
      'router': 'router/logo_animation_widget'
    });
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
                if (listViewItemData['router'] != null) {
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

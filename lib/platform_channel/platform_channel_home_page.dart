import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformChannelHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PlatformaChannelHomePageState();
  }
}

class PlatformaChannelHomePageState extends State<PlatformChannelHomePage> {
  final String _TAG = "PlatformaChannelHomePageState";
  String _volumeText = "从原生代码中返回的音量值:null";
  String _eventInfoByEventChannelText = "";

  static const methodChannel = const MethodChannel("com.fxj.myflutterstudy");
  static const eventChannel =
      const EventChannel("com.fxj.myflutterstudy/event");

  Future<Null> _getVolume() async {
    String _result;
    try {
      _result = await methodChannel.invokeMethod("getVolume");
      print(_TAG + "**_getVolume _result=${_result}");
    } on PlatformException catch (e) {
      print(_TAG +
          "**Flutter 调用Andorid原生代码Exception,Exception Message=${e.message}");
      _result = e.message;
    }

    setState(() {
      _volumeText = "从原生代码中返回的音量值:" + _result;
    });
  }

  @override
  void initState() {
    super.initState();
    methodChannel.setMethodCallHandler(handlerCallFromAndroid);
    eventChannel.receiveBroadcastStream().listen(_onEvent, onError: _onError);
  }

  void _onEvent(Object event) {
    setState(() {
      _eventInfoByEventChannelText = event.toString();
    });
  }

  void _onError(Object event) {
    setState(() {
      _eventInfoByEventChannelText = "onError,msg=" + event.toString();
    });
  }

  Future<dynamic> handlerCallFromAndroid(MethodCall call) async {
    switch (call.method) {
      case "getFlutterInfo":
        try {
          return "MethodChannel 已经处理了来自Android原生的调用";
        } on PlatformException catch (e) {
          return e.message;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "PlatformaChannelHomePage",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter与Android原生代码通信"),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
                height: 70,
                /*设置Container内部child Widget的对齐方式*/
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                color: Color.fromARGB(255, 0, 255, 0),
                child: new RaisedButton(
                  onPressed: () {
                    _getVolume();
                  },
                  color: Color.fromARGB(255, 255, 104, 104),
                  highlightColor: Color.fromARGB(255, 255, 0, 0),
                  child: new Text("调用Android原生代码获取音量"),
                )),
            new Text(_volumeText),
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
              child:
                  new Text("点击音量Down键,触发Android原生代码通过MethodChannel调用Flutter方法"),
            ),
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
              child: new Text("点击音量Up键,触发原生代码通过EventChannel发送信息到Flutter"),
            ),
            new Text("原生代码通过EventChannel发送到Flutter的信息为:" +
                _eventInfoByEventChannelText),
            new Divider(
              height: 4,
              color: Colors.blue[900],
            ),
          ],
        ),
      ),
    );
  }
}

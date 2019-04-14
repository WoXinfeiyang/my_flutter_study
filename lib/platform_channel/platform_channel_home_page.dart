import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformChannelHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new PlatformaChannelHomePageState();
  }
}

class PlatformaChannelHomePageState extends State<PlatformChannelHomePage>{

  final String _TAG="PlatformaChannelHomePageState";
  String _volumeText="从原生代码中返回的音量值:null";

  static const methodChannel=const MethodChannel("com.fxj.myflutterstudy");

  Future<Null> _getVolume() async{
    String _result;
    try{
      _result=await methodChannel.invokeMethod("getVolume");
      print(_TAG+"**_getVolume _result=${_result}");
    }on PlatformException catch(e){
      print(_TAG+"**Flutter 调用Andorid原生代码Exception,Exception Message=${e.message}");
      _result=e.message;
    }

    setState(() {
      _volumeText="从原生代码中返回的音量值:"+_result;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "PlatformaChannelHomePage",
      home:new Scaffold(
        appBar: new AppBar(title: new Text("Flutter与Android原生代码通信"),),
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
          ],
        ),
      ),
    );
  }

}
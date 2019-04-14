import 'package:flutter/material.dart';

class PlatformChannelHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new PlatformaChannelHomePageState();
  }
}

class PlatformaChannelHomePageState extends State<PlatformChannelHomePage>{

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
        body: new Text("PlatformaChannelHomePage"),),
    );
  }

}
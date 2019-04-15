package com.fxj.myflutterstudy;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  FlutterMethodChannel mFlutterMethodChannel;
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    mFlutterMethodChannel=FlutterMethodChannel.create(this,getFlutterView());
  }
}

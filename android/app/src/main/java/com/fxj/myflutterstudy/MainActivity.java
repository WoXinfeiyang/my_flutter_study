package com.fxj.myflutterstudy;

import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  private static final String TAG=MainActivity.class.getSimpleName();

  FlutterMethodChannel mFlutterMethodChannel;

  FlutterEventChannel mFlutterEventChannel;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    mFlutterMethodChannel=FlutterMethodChannel.create(this,getFlutterView());

    mFlutterEventChannel=FlutterEventChannel.create(this,getFlutterView());
  }

  @Override
  public boolean onKeyDown(int keyCode, KeyEvent event) {
    switch (keyCode){
      case KeyEvent.KEYCODE_VOLUME_DOWN:
        Log.d(TAG,"音量Down键被点击!");
        mFlutterMethodChannel.getFluuterInfo();
        break;
      case KeyEvent.KEYCODE_VOLUME_UP:
        Log.d(TAG,"音量Up键被点击!");
        mFlutterEventChannel.sendEvent(Utils.getInstance(this).getMobileBrand()+",timestamp="+System.currentTimeMillis());
        break;
    }
    return super.onKeyDown(keyCode, event);
  }
}

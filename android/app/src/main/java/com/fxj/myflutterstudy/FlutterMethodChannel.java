package com.fxj.myflutterstudy;

import android.util.Log;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.FlutterView;

public class FlutterMethodChannel implements MethodChannel.MethodCallHandler{
    private static final String TAG="FlutterMethodChannel";

    private final String ChannelName="com.fxj.myflutterstudy";

    private final MethodChannel methodChannel=null;

    private FlutterMethodChannel(FlutterView flutterView){
        methodChannel=new MethodChannel(flutterView,ChannelName);
        methodChannel.setMethodCallHandler(this);
    }

    public static FlutterMethodChannel create(FlutterView flutterView){
        return new FlutterMethodChannel(flutterView);
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result){
        Log.d(TAG,"**onMethodCall**");
        /*接收来自Flutter的调用*/
        if(methodCall.method.equals("getVolume")){
            result.success("25");
        }else{
            result.notImplemented();
        }
    }
}
package com.fxj.myflutterstudy;

import android.content.Context;
import android.util.Log;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.FlutterView;

public class FlutterMethodChannel implements MethodChannel.MethodCallHandler{
    private static final String TAG="FlutterMethodChannel";

    private Context mContext;
    private final String ChannelName="com.fxj.myflutterstudy";

    private MethodChannel methodChannel=null;

    private FlutterMethodChannel(Context context, FlutterView flutterView){
        this.mContext=context;
        methodChannel=new MethodChannel(flutterView,ChannelName);
        methodChannel.setMethodCallHandler(this);
    }

    public static FlutterMethodChannel create(Context context,FlutterView flutterView){
        return new FlutterMethodChannel(context,flutterView);
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result){
        /*接收来自Flutter的调用*/
        if(methodCall.method.equals("getVolume")){
            int streamVolume= Utils.getInstance(this.mContext).getStreamVolume();
            Log.d(TAG,"**onMethodCall**streamVolume="+streamVolume);
            result.success(String.valueOf(streamVolume));
        }else{
            result.notImplemented();
        }
    }
    public void getFluuterInfo(){
        methodChannel.invokeMethod("getFlutterInfo", null, new MethodChannel.Result() {
            @Override
            public void success(Object o) {
                Log.d(TAG,"**getFluuterInfo success**"+o.toString());
            }

            @Override
            public void error(String s,String s1, Object o) {
                Log.d(TAG,"**getFluuterInfo error**");
            }

            @Override
            public void notImplemented() {
                Log.d(TAG,"**getFluuterInfo notImplemented**");
            }
        });
    }
}
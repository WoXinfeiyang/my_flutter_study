package com.fxj.myflutterstudy;

import android.content.Context;
import android.util.Log;

import io.flutter.plugin.common.EventChannel;
import io.flutter.view.FlutterView;

public class FlutterEventChannel implements EventChannel.StreamHandler {

    private static final String TAG=FlutterEventChannel.class.getSimpleName();

    private static final String EVENT_CHANNEL_NAME="com.fxj.myflutterstudy/event";

    private Context mContext;

    private EventChannel eventChannel;

    private EventChannel.EventSink mEventSink;

    private FlutterEventChannel(Context context, FlutterView flutterView){
        this.mContext=context;
        this.eventChannel=new EventChannel(flutterView,EVENT_CHANNEL_NAME);
        this.eventChannel.setStreamHandler(this);
    }

    public static FlutterEventChannel create(Context context, FlutterView flutterView){
        return new FlutterEventChannel(context,flutterView);
    }

    public void sendEvent(Object data){
        if(mEventSink!=null){
            mEventSink.success(data);
        }else{
            Log.e(TAG,"EventSink 为空!");
        }
    }

    @Override
    public void onListen(Object o, EventChannel.EventSink eventSink) {
        this.mEventSink=eventSink;
        Log.d(TAG,"**onListen**mEventSink="+mEventSink);
    }

    @Override
    public void onCancel(Object o) {
        Log.d(TAG,"**onCancel**Object="+o.toString());
        this.mEventSink=null;
    }
}

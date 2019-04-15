package com.fxj.myflutterstudy;

import android.content.Context;
import android.media.AudioManager;

public class Utils {
    private static Utils sInstance;
    private Context mContext;
    private Utils(Context context){
        mContext=context;
        audioManager= (AudioManager) mContext.getSystemService(Context.AUDIO_SERVICE);
    }

    private AudioManager audioManager;

    public static Utils getInstance(Context context){
        if(sInstance==null){
            sInstance=new Utils(context);
        }
        return sInstance;
    }

    public int getStreamVolume(){
        return audioManager.getStreamVolume(AudioManager.STREAM_RING);
    }
}

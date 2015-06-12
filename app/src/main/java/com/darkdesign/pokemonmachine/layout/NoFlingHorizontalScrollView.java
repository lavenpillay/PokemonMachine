package com.darkdesign.pokemonmachine.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.HorizontalScrollView;

public class NoFlingHorizontalScrollView extends HorizontalScrollView {
	
    public NoFlingHorizontalScrollView(Context context) {
        super(context);
    }
    
    public NoFlingHorizontalScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public NoFlingHorizontalScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }
    
	@Override
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        // TODO Auto-generated method stub
        super.onScrollChanged(l, t, oldl, oldt);
        
        //partner.onScrollChanged(l, t, oldl, oldt);
    }
	
	@Override
	public void fling (int velocityY)
	{
	    /*Scroll view is no longer gonna handle scroll velocity.
	     * super.fling(velocityY);
	    */
	}
	
}
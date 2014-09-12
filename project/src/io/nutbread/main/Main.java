package io.nutbread.main;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.TextView;



public class Main extends Activity {
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		TextView textView = new TextView(this);

		String text = getResources().getString(R.string.testResource);
		textView.setText(text);

		setContentView(textView);
	}
}



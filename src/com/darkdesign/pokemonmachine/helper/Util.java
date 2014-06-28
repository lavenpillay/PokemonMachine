package com.darkdesign.pokemonmachine.helper;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.Display;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.dialog.GameFilterDialog;
import com.darkdesign.pokemonmachine.dialog.TypeMatchupPopup;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.Type;
import com.darkdesign.pokemonmachine.element.VideoGame;
import com.darkdesign.pokemonmachine.layout.FlowLayout;

public class Util {
	private static String TAG = Util.class.getName();
	
	private static final int MOVE_ID_TOKEN_POSITION = 4;
	private static Point screenDimensions;
	
	public static void measureScreenDimensions(Context context) {
		WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		Display display = wm.getDefaultDisplay();
		screenDimensions = new Point();
		display.getSize(screenDimensions);
	}
	
	public static String padLeft(String stringToPad, int finalLength) {
		return String.format("%03d", Integer.valueOf(stringToPad));
	}
	
	public static String padLeft(int intToPad, int finalLength) {
		return String.format("%03d", intToPad);
	}
	
	public static String arrayListToCSV(ArrayList list) {
		return list.toString().replaceAll("[\\s\\[\\]]", "");
	}
	
	public static String stripZeros(String stringToModify) {
		return stringToModify.replaceAll("0", "");
	}
	
	/**
	 * 
	 * @param stringToConvert
	 * @return
	 */
	public static String toTitleCase(String stringToConvert) {
		
		String returnStr = "";
		
		if (stringToConvert == null || stringToConvert.equals("")) {
			return "";
		}
		
		stringToConvert = stringToConvert.replace("-", " ");
		
		if (stringToConvert != null) {
	        String[] arr = stringToConvert.split(" ");
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < arr.length; i++) {
	        	sb.append(Character.toUpperCase(arr[i].charAt(0))).append(arr[i].substring(1)).append(" ");
	        }   
	        
	        returnStr =  sb.toString().trim();
		}

		return returnStr;
    }
	
	/**
	 * 
	 * @param text
	 * @return
	 */
	public static String toAllLowerCase(String text) {
		String newText;
		newText = text.toLowerCase();
		newText = newText.replace(" ", "");
		newText = newText.replace("_", "");
		newText = newText.replace("-", "");
		
		return newText;
	}
	
	/**
	 * Returns the IDs of a list of Moves, as a CSV string
	 */
	public static String getMoveListIDsAsCSV(ArrayList<Move> moveList) {
		String returnStr = "";
		
		for (int i=0; i < moveList.size(); i++) {
			String resourceURI = moveList.get(i).getResourceURI();
			String[] moveData = resourceURI.split("/");
			String moveID = moveData[MOVE_ID_TOKEN_POSITION];
			returnStr += (moveID + ",");
		}
		
		// Trim final comma and return
		return returnStr.substring(0, returnStr.length() -1);
	}
	
	public static int arrayIndexOf(String[] array, String value) {
		int index = 0;
		boolean valueFound = false;
		
		while (!valueFound) {
			if (array[index].equalsIgnoreCase(value)) {
				break;
			}
			index++;
		}
		
		return index;
	}
	
	public static String[] getMoveListIDsAsArray(ArrayList<Move> moveList) {
		String[] ids = new String[moveList.size()];
		
		for (int i=0; i < moveList.size(); i++) {
			String resourceURI = moveList.get(i).getResourceURI();
			String[] moveData = resourceURI.split("/");
			String moveID = moveData[MOVE_ID_TOKEN_POSITION];
			ids[i] = moveID;
		}
		
		return ids;
	}
	
	public static ArrayList<Move> sortMovesByLevel(ArrayList<Move> list) {
		Collections.sort(list, new Comparator<Move>() {
		    @Override
		    public int compare(Move move1, Move move2) {
		        if (Integer.valueOf(move1.getLevel()) > Integer.valueOf(move2.getLevel()))
		            return 1;
		        if (Integer.valueOf(move1.getLevel()) < Integer.valueOf(move2.getLevel()))
		            return -1;
		        return 0;
		    }
		});
		
		return list;
	}
	
	/**
	 * 
	 * @param str
	 * @return
	 */
	public static boolean stringIsInteger(String str) {
		try {  
		    int i = Integer.parseInt(str);  
		}  
		catch(NumberFormatException nfe) {  
			return false;  
		}  
		return true;
	}
	
	/**
	 * 
	 * @param valueInKilograms
	 * @return
	 */
	public static String convertKilogramsToImperial(double valueInKilograms) {
		return String.valueOf(round(valueInKilograms * 2.2046, 2));
	}
	
	/**
	 * 
	 * @param valueInMeters
	 * @return
	 */
	public static String convertMetersToImperial(double valueInMeters) {
		double valueInInches = valueInMeters * 39.37;
		int feetPart = (int) (valueInInches / 12);
		int inchesPart = (int) (valueInInches % 12);
		
		String finalValue = feetPart + "' " + inchesPart + "\"";
				
		return finalValue; 
	}

	/**
	 * 
	 * @param damagePercentageType1
	 * @param damagePercentageType2
	 * @return
	 */
	public static String getAttackEfficacy(int damagePercentageType1, int damagePercentageType2) {
		String damage = "";

		if (damagePercentageType2 == Constants.TYPE_NULL) {
			if (damagePercentageType1 == 0) {
				damage = Constants.DAMAGE_STRING_IMMUNE;
			} else if (damagePercentageType1 == 50) {
				damage = Constants.DAMAGE_STRING_HALF;
			} else if (damagePercentageType1 == 100) {
				damage = Constants.DAMAGE__STRING_REGULAR;
			} else if (damagePercentageType1 == 200) {
				damage = Constants.DAMAGE_STRING_DOUBLE;
			}
		} else {
			if (damagePercentageType1 == 100 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE__STRING_REGULAR;
			} else if (damagePercentageType1 == 200 && damagePercentageType2 == 50) {
				damage = Constants.DAMAGE__STRING_REGULAR;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 200) {
				damage = Constants.DAMAGE__STRING_REGULAR;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE__STRING_REGULAR;
			} else if (damagePercentageType1 == 100 && damagePercentageType2 == 50) {
				damage = Constants.DAMAGE_STRING_HALF;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_STRING_HALF;
			} else if (damagePercentageType1 == 100 && damagePercentageType2 == 200) {
				damage = Constants.DAMAGE_STRING_DOUBLE;
			} else if (damagePercentageType1 == 200 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_STRING_DOUBLE;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 50) {
				damage = Constants.DAMAGE_STRING_QUARTER;
			} else if (damagePercentageType1 == 0 || damagePercentageType2 == 0) {
				damage = Constants.DAMAGE_STRING_IMMUNE;
			} else if (damagePercentageType1 == 200 && damagePercentageType2 == 200) {
				damage = Constants.DAMAGE_STRING_QUADRUPLE;
			}
		}
		
		return damage;
	}

	public static double round(double value, int places) {
        if (places < 0)
            throw new IllegalArgumentException();

        BigDecimal bd = new BigDecimal(value);
        bd = bd.setScale(places, BigDecimal.ROUND_HALF_UP);
        return bd.doubleValue();
    }
	
	// The method that displays the popup.
	public static void showPopup(final Activity context, Point p, String heading, String content) {
	   int popupWidth = 200;
	   int popupHeight = 250;
	 
	   // Inflate the popup_layout.xml
	   LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.popup);
	   LayoutInflater layoutInflater = (LayoutInflater) context
	     .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	   View layout = layoutInflater.inflate(R.layout.popup_layout, viewGroup);
	 
	   // Creating the PopupWindow
	   final PopupWindow popup = new PopupWindow(context);
	   popup.setContentView(layout);
	   popup.setWidth(popupWidth);
	   popup.setHeight(popupHeight);
	   popup.setFocusable(true);
	 
	   // Some offset to align the popup a bit to the right, and a bit down, relative to button's position.
	   int OFFSET_X = 10;
	   int OFFSET_Y = 30;
	 
	   // Clear the default translucent background
	   popup.setBackgroundDrawable(new BitmapDrawable());
	 
		// Displaying the popup at the specified location, + offsets.
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, p.x + OFFSET_X, p.y + OFFSET_Y);
	   
		// Update Heading and Content
		TextView txtHeading = (TextView) layout.findViewById(R.id.txtPopupHeading);
		TextView txtContent = (TextView) layout.findViewById(R.id.txtPopupContent);
		txtHeading.setText(heading);
		txtContent.setText(content);

		// Setup Layout Params
		popup.update(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);

		// Getting a reference to Close button, and close the popup when clicked.
		/*
		Button close = (Button) layout.findViewById(R.id.close);
		close.setOnClickListener(new OnClickListener() {
	 
	     @Override
	     public void onClick(View v) {
	       popup.dismiss();
	     }
	   });
	   */
	}	
	
	/**
	 * 
	 * @param context
	 */
	public static void showGameFilterDialog(final Activity context) {
		int popupWidth = 500;
		int popupHeight = 350;

		// Inflate the popup_layout.xml
		LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.gameFilterDialog);
		LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View layout = layoutInflater.inflate(R.layout.collection_game_filter_popup_layout, viewGroup);
		   
		// Creating the PopupWindow
		final GameFilterDialog popup = new GameFilterDialog(context);
		popup.setContentView(layout);
		popup.setWidth(popupWidth);
		popup.setHeight(popupHeight);
		popup.setFocusable(true);
		 
		// Clear the default translucent background
		popup.setBackgroundDrawable(new BitmapDrawable());
	 
		//LinearLayout gameFilterCheckboxHolder = (LinearLayout) layout.findViewById(R.id.gameFilterCheckboxHolder);
		FlowLayout gameFilterCheckboxHolder = (FlowLayout) layout.findViewById(R.id.gameFilterCheckboxHolder);
		
		// Generate Checkboxes
		generateGameFilterCheckboxes(context, gameFilterCheckboxHolder);
		
		int width = getScreenWidth(context);
		int height = getScreenHeight(context);
		
		int posX = (width / 2) - (popupWidth / 2);
		int posY = (height / 2) - (popupHeight / 2);
		
		// Displaying the popup in the middle of the screen
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, posX, posY);
	
	}
	
	/**
	 * 
	 * @param context
	 */
	public static void showTypeWeaknessPopup(final Activity context) {
		// Inflate the popup_layout.xml
		LinearLayout viewGroup = (LinearLayout) context.findViewById(R.id.typeWeaknessDialog);
		LayoutInflater layoutInflater = (LayoutInflater) context
		   .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View layout = layoutInflater.inflate(R.layout.type_weakness_table_popup_layout, viewGroup);
		   
		// Creating the PopupWindow
		final TypeMatchupPopup popup = new TypeMatchupPopup(context, layout);
		popup.setContentView(layout);
		 
		// Positioning
		int width = getScreenWidth(context);
		int height = getScreenHeight(context);
		
		int posX = (width / 2) - (popup.getPopupWidth() / 2);
		int posY = (height / 2) - (popup.getPopupHeight() / 2) + popup.getPopupHeightOffset();
		
		// Displaying the popup in the middle of the screen
		popup.showAtLocation(layout, Gravity.NO_GRAVITY, posX, posY);
	}

	/**
	 * 
	 * @param image
	 * @param rotation
	 * @param context
	 * @return
	 */
	public static ImageView rotateImageView(ImageView image, int rotation, Context context) {
		Bitmap bitmap = ((BitmapDrawable)image.getDrawable()).getBitmap();
		
		Matrix mat = new Matrix();
		mat.postRotate(rotation);
		Bitmap bMapRotate = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), mat, true);
		BitmapDrawable bmd = new BitmapDrawable(bMapRotate);
		
		ImageView rotatedImageView = new ImageView(context);
		rotatedImageView.setImageBitmap(bMapRotate);
		rotatedImageView.setImageDrawable(bmd);
		
		return rotatedImageView;
	}

	/**
	 * 
	 * @param context
	 * @param gameFilterCheckboxHolder
	 */
	public static void generateGameFilterCheckboxes(final Activity context, FlowLayout gameFilterCheckboxHolder) {
		
		ArrayList<VideoGame> gameList = PokemonMachineActivity.cache.getGameList();
		
		for (int i=0; i < gameList.size(); i++) {
			CheckBox checkBox = new CheckBox(context);
			checkBox.setTextColor(0xFFBBBBBB);
			checkBox.setWidth(120);
			checkBox.setText(gameList.get(i).getName());
			   
			gameFilterCheckboxHolder.addView(checkBox);
		}
	}	
	
	/**
	 * 
	 * @param context
	 * @return
	 */
	public static int getScreenWidth(Context context) {
		if (Util.screenDimensions == null) { Util.measureScreenDimensions(context); }
		
		return Util.screenDimensions.x;
	}
	
	/**
	 * 
	 * @param context
	 * @return
	 */
	public static int getScreenHeight(Context context) {
		if (Util.screenDimensions == null) { Util.measureScreenDimensions(context); }
		
		return Util.screenDimensions.y;
	}
}

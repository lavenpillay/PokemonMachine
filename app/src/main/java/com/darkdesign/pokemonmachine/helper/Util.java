package com.darkdesign.pokemonmachine.helper;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.element.Move;
import com.darkdesign.pokemonmachine.element.VideoGame;
import com.darkdesign.pokemonmachine.layout.FlowLayout;

public class Util {
	private static String TAG = Util.class.getName();

	private static final int MOVE_ID_TOKEN_POSITION = 4;
	private static Point screenDimensions;

	public static Bitmap getPokemonSprite(int pokemonId) {
		return PokemonMachineActivity.assetHelper.getBitmapFromAsset("pokemon_sprites/" + padLeft(String.valueOf(pokemonId), Constants.POKEMON_ID_LENGTH) + ".png");
	}

	public static Bitmap getTypeSprite(String typeName) {
		return PokemonMachineActivity.assetHelper.getBitmapFromAsset("type_images_medium/" + typeName + ".png");
	}

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

			returnStr = sb.toString().trim();
		}

		return returnStr;
	}

	/**
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

		for (int i = 0; i < moveList.size(); i++) {
			String resourceURI = moveList.get(i).getResourceURI();
			String[] moveData = resourceURI.split("/");
			String moveID = moveData[MOVE_ID_TOKEN_POSITION];
			returnStr += (moveID + ",");
		}

		// Trim final comma and return
		return returnStr.substring(0, returnStr.length() - 1);
	}

	public static int arrayIndexOf(String[] array, String value) {
		int index = 0;
		boolean valueFound = false;

		for (int i = 0; i < array.length; i++) {
			if (array[i].equalsIgnoreCase(value)) {
				index = i;
				break;
			}
		}

		return index;
	}

	public static String[] getMoveListIDsAsArray(ArrayList<Move> moveList) {
		String[] ids = new String[moveList.size()];

		for (int i = 0; i < moveList.size(); i++) {
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
				if (move1.getLevel() > move2.getLevel())
					return 1;
				if (move1.getLevel() < move2.getLevel())
					return -1;
				return 0;
			}
		});

		return list;
	}

	/**
	 * @param str
	 * @return
	 */
	public static boolean stringIsInteger(String str) {
		try {
			int i = Integer.parseInt(str);
		} catch (NumberFormatException nfe) {
			return false;
		}
		return true;
	}

	/**
	 * @param valueInKilograms
	 * @return
	 */
	public static String convertKilogramsToImperial(double valueInKilograms) {
		return String.valueOf(round(valueInKilograms * 2.2046, 2));
	}

	/**
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
				damage = Constants.DAMAGE_STRING_REGULAR;
			} else if (damagePercentageType1 == 200) {
				damage = Constants.DAMAGE_STRING_DOUBLE;
			}
		} else {
			if (damagePercentageType1 == 100 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_STRING_REGULAR;
			} else if (damagePercentageType1 == 200 && damagePercentageType2 == 50) {
				damage = Constants.DAMAGE_STRING_REGULAR;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 200) {
				damage = Constants.DAMAGE_STRING_REGULAR;
			} else if (damagePercentageType1 == 50 && damagePercentageType2 == 100) {
				damage = Constants.DAMAGE_STRING_REGULAR;
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


	/**
	 * @param image
	 * @param rotationAngle
	 * @param context
	 * @return
	 */
	public static ImageView rotateImageView(ImageView image, int rotationAngle, Context context) {
		Matrix matrix = new Matrix();
		image.setScaleType(ScaleType.MATRIX);   //required
		int pivotX = image.getDrawable().getBounds().width() / 2;
		float pivotY = image.getDrawable().getBounds().height() / 2;
		matrix.postRotate((float) rotationAngle, pivotX, pivotY);
		image.setImageMatrix(matrix);

		return image;
	}

	/**
	 * @param context
	 * @param gameFilterCheckboxHolder
	 */
	public static void generateGameFilterCheckboxes(final Activity context, FlowLayout gameFilterCheckboxHolder) {

		ArrayList<VideoGame> gameList = PokemonMachineActivity.cache.getGameList();

		for (int i = 0; i < gameList.size(); i++) {
			CheckBox checkBox = new CheckBox(context);
			checkBox.setTextColor(0xFFBBBBBB);
			checkBox.setWidth(120);
			checkBox.setText(gameList.get(i).getName());

			gameFilterCheckboxHolder.addView(checkBox);
		}
	}

	/**
	 * @param context
	 * @return
	 */
	public static int getScreenWidth(Context context) {
		if (Util.screenDimensions == null) {
			Util.measureScreenDimensions(context);
		}

		return Util.screenDimensions.x;
	}

	/**
	 * @param context
	 * @return
	 */
	public static int getScreenHeight(Context context) {
		if (Util.screenDimensions == null) {
			Util.measureScreenDimensions(context);
		}

		return Util.screenDimensions.y;
	}

	/**
	 * @param v
	 */
	public static void hideSoftKeyboard(TextView v) {
		// hide virtual keyboard - could also use InputMethodManager.HIDE_NOT_ALWAYS
		InputMethodManager imm = (InputMethodManager) v.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.hideSoftInputFromWindow(v.getWindowToken(), InputMethodManager.RESULT_UNCHANGED_SHOWN);
	}

	public String convertToCSV(String[] values) {
		// CSV format
		return values.toString().replace("[", "").replace("]", "").replace(", ", ",");
	}


	public String convertToCSVWithQuotes(String[] values) {
		// CSV format surrounded by single quote
		// Useful for SQL IN QUERY

		return values.toString().replace("[", "'").replace("]", "'").replace(", ", "','");
	}

	public static int[] convertIntegerListToPrimitiveArray(List<Integer> integers)
	{
		int[] ret = new int[integers.size()];
		Iterator<Integer> iterator = integers.iterator();
		for (int i = 0; i < ret.length; i++)
		{
			ret[i] = iterator.next().intValue();
		}
		return ret;
	}

	public static void setListViewHeightBasedOnChildren(ListView listView) {
		ListAdapter listAdapter = listView.getAdapter();
		if (listAdapter == null) {
			// pre-condition
			return;
		}

		int totalHeight = 0;
		int desiredWidth = View.MeasureSpec.makeMeasureSpec(listView.getWidth(), View.MeasureSpec.AT_MOST);
		for (int i = 0; i < listAdapter.getCount(); i++) {
			View listItem = listAdapter.getView(i, null, listView);
			listItem.measure(desiredWidth, View.MeasureSpec.UNSPECIFIED);
			totalHeight += listItem.getMeasuredHeight();
		}

		ViewGroup.LayoutParams params = listView.getLayoutParams();
		params.height = totalHeight + (listView.getDividerHeight() * (listAdapter.getCount() - 1));
		listView.setLayoutParams(params);
		listView.requestLayout();
	}

}

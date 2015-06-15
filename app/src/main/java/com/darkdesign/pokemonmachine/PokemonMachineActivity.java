package com.darkdesign.pokemonmachine;

import java.util.Locale;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActionBar;
import android.app.Activity;
import android.content.SharedPreferences;
import android.preference.ListPreference;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.app.FragmentTransaction;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;

import com.darkdesign.pokemonmachine.cache.Cache;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.dialog.PopupManager;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.fragment.CollectionDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.ItemDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.MoveDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;
import com.darkdesign.pokemonmachine.helper.AssetHelper;
import com.darkdesign.pokemonmachine.helper.Constants;
import com.darkdesign.pokemonmachine.preferences.SettingsFragment;
import com.darkdesign.pokemonmachine.task.LoadingTask;


public class PokemonMachineActivity extends FragmentActivity implements ActionBar.TabListener, OnBackStackChangedListener {
	
	private static String TAG = PokemonMachineActivity.class.getName();
	
	public static final int FRAGMENT_POSITION_ITEMS = 0;
	public static final int FRAGMENT_POSITION_POKEMON = 1;

    SectionsPagerAdapter mSectionsPagerAdapter;

    /**
     * The {@link ViewPager} that will host the section contents.
     */
    private ViewPager mViewPager;

    public static DatabaseHelper db;
    public static Cache cache;
    
    public static Pokemon currentSelectedPokemon;
    public static int currentLanguage = Constants.LANGUAGE_ENGLISH;
    
    public static PokemonDisplayFragment pokemonDisplayFragment = null;
    private CollectionDisplayFragment collectionDisplayFragment = null;
    public static ItemDisplayFragment itemDisplayFragment = null;
    private MoveDisplayFragment moveDisplayFragment = null;
    private Fragment settingsFragment = null;

    private LinearLayout loadingLayout;
    private int mShortAnimationDuration;
    
    public static AssetHelper assetHelper;
    
    public static ProgressBar spinner;

    private void crossfade() {

        // Set the content view to 0% opacity but visible, so that it is visible
        // (but fully transparent) during the animation.
        mViewPager.setAlpha(0f);
        mViewPager.setVisibility(View.VISIBLE);

        // Animate the content view to 100% opacity, and clear any animation
        // listener set on the view.
        mViewPager.animate()
                .alpha(1f)
                .setDuration(mShortAnimationDuration)
                .setListener(null);

        // Animate the loading view to 0% opacity. After the animation ends,
        // set its visibility to GONE as an optimization step (it won't
        // participate in layout passes, etc.)
        loadingLayout.animate()
                .alpha(0f)
                //.setDuration(mShortAnimationDuration)
                .setDuration(2000)
                .setListener(new AnimatorListenerAdapter() {
                    @Override
                    public void onAnimationEnd(Animator animation) {
                        loadingLayout.setVisibility(View.GONE);
                    }
                });
    }
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pokemonmachine);
        
        // TODO Remove this after DEBUG/TESTING
        //forceDatabaseReload(this);
        
        // Create and Initialise Database Connection
        db = new DatabaseHelper(this);
        
        // Create and Initialise Cache 
        cache = new Cache();
        //cache = LoadingTask.cache;
        
        this.assetHelper = new AssetHelper(this);

        // Set up the action bar.
        final ActionBar actionBar = getActionBar();
        actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);

        // Reference to loading image
        loadingLayout = (LinearLayout) findViewById(R.id.loadingLayout);

        // Create the adapter that will return a fragment for each of the three
        // primary sections of the activity.
        mSectionsPagerAdapter = new SectionsPagerAdapter(getSupportFragmentManager());

        // Set up the ViewPager with the sections adapter.
        mViewPager = (ViewPager) findViewById(R.id.pager);
        mViewPager.setAdapter(mSectionsPagerAdapter);

        // CROSSFADE
        // Initially hide the content view.
        // mViewPager.setVisibility(View.GONE);

        // Retrieve and cache the system's default "short" animation time.
        mShortAnimationDuration = getResources().getInteger(
                android.R.integer.config_shortAnimTime);

        // When swiping between different sections, select the corresponding
        // tab. We can also use ActionBar.Tab#select() to do this if we have
        // a reference to the Tab.
        mViewPager.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() {
            @Override
            public void onPageSelected(int position) {
                actionBar.setSelectedNavigationItem(position);
            }
        });
        
        FragmentManager fragmentManager = getSupportFragmentManager();
        fragmentManager.addOnBackStackChangedListener(this);

        // For each of the sections in the app, add a tab to the action bar.
        for (int i = 0; i < mSectionsPagerAdapter.getCount(); i++) {
            // Create a tab with text corresponding to the page title defined by
            // the adapter. Also specify this Activity object, which implements
            // the TabListener interface, as the callback (listener) for when
            // this tab is selected.
            actionBar.addTab(
                    actionBar.newTab()
                            .setText(mSectionsPagerAdapter.getPageTitle(i))
                            .setTabListener(this));
        }

        //crossfade();

        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        currentLanguage = Integer.parseInt(sharedPreferences.getString(Constants.PREF_KEY_LANGUAGE, "9"));

        // Set to default Tab
        mViewPager.setCurrentItem(1);

    }
    
    /**
	 * 
	 * @param nationalId
	 */
	public void executeSearch(int nationalId) {
		executeSearchByDatabase(nationalId);
	}
	
	/**
	 * 
	 * @param nationalId
	 */
	public void executeSearchByDatabase(int nationalId) {
		Pokemon pokemon = PokemonMachineActivity.cache.getPokemon(nationalId);
		
		onPokemonUpdated(pokemon);
	}
	

	
	// -------------------------------------------------------------------------------------------------
	
	 /**
	  * 
	  * @param pokemon
	  */
	public void onPokemonUpdated(Pokemon pokemon) {
		Log.i(TAG, "PokemonUpdated Received by MainActivity : ID = " + pokemon.getId());
	
		currentSelectedPokemon = pokemon;
		
		// Update Pokemon Display		
		pokemonDisplayFragment.update(pokemon);
		
	}
    
    // -------------------------------------------------------------------------------------------------

	/**
	 * 
	 * @param view
	 */
	public void onSearchClick(View view) {
        pokemonDisplayFragment.searchFromSearchBox();
	}

    public void onPreviousPokemonClick(View view) {
        int previousId = currentSelectedPokemon.getId() - 1;
        currentSelectedPokemon = PokemonMachineActivity.cache.getPokemon(previousId);

        // Update Pokemon Display
        pokemonDisplayFragment.update(currentSelectedPokemon);
    }

    public void onNextPokemonClick(View view) {
        int nextId = currentSelectedPokemon.getId() + 1;
        currentSelectedPokemon = PokemonMachineActivity.cache.getPokemon(nextId);

        // Update Pokemon Display
        pokemonDisplayFragment.update(currentSelectedPokemon);
    }
	

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main_activity_actions, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
        	showSettings();
            return true;
        } else if (id == R.id.action_type_table) {
        	PopupManager.showTypeWeaknessPopup(this);
        }
        return super.onOptionsItemSelected(item);
    }
    
	public void showSettings() {
		if (settingsFragment == null) {
			settingsFragment = new SettingsFragment();
		}
		
		 mViewPager.setCurrentItem(3);
	}

    @Override
    public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        // When the given tab is selected, switch to the corresponding page in
        // the ViewPager.
        mViewPager.setCurrentItem(tab.getPosition());
    }

    @Override
    public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }

    @Override
    public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }

    /**
     * A {@link FragmentPagerAdapter} that returns a fragment corresponding to
     * one of the sections/tabs/pages.
     */
    public class SectionsPagerAdapter extends FragmentPagerAdapter {

        public SectionsPagerAdapter(FragmentManager fm) {
            super(fm);
            
            // Create Default Fragment
            if (pokemonDisplayFragment == null) {
    			pokemonDisplayFragment = new PokemonDisplayFragment();
    		}
        }

        @Override
        public Fragment getItem(int position) {
            // getItem is called to instantiate the fragment for the given page.
            // Return a PlaceholderFragment (defined as a static inner class below).
            //return PlaceholderFragment.newInstance(position + 1);
        	
        	
        	Fragment returnFragment = null;
        	
        	if (position == 0) {
        		if (itemDisplayFragment == null) {
        			itemDisplayFragment = new ItemDisplayFragment();
                }
        		
        		returnFragment = itemDisplayFragment;

        	} else if (position == 1) {
        		if (pokemonDisplayFragment == null) {
        			pokemonDisplayFragment = new PokemonDisplayFragment();
        		}
        		
        		returnFragment = pokemonDisplayFragment;
        	} else if (position == 2) {
        		if (moveDisplayFragment == null) {
        			moveDisplayFragment = new MoveDisplayFragment();
        		}
        		
        		returnFragment = moveDisplayFragment;
        		
        	} else if (position == 3) {
        		if (settingsFragment == null) {
        			settingsFragment = new SettingsFragment();
        		}
        		
        		returnFragment = settingsFragment;
        	}
        	
        	/*
        	else if (position == 3) {
        		if (collectionDisplayFragment == null) {
        			collectionDisplayFragment = new CollectionDisplayFragment();
        		}
        		
        		returnFragment = collectionDisplayFragment;
        	} 
        	*/
        	
        	return returnFragment;
        }

        @Override
        public int getCount() {
            return 4;
        }

        @Override
        public CharSequence getPageTitle(int position) {
            Locale l = Locale.getDefault();
            switch (position) {
                case 0:
                    return getString(R.string.title_fragment1).toUpperCase(l);
                case 1:
                    return getString(R.string.title_fragment2).toUpperCase(l);
                case 2:
                    return getString(R.string.title_fragment3).toUpperCase(l);
                case 3:
                    return getString(R.string.title_fragment4).toUpperCase(l);    
            }
            return null;
        }
    }
    
    /**
     * Forces the database to reload from the default asset file.
     */
    public static void forceDatabaseReload(Context context){
        DatabaseHelper dbHelper = new DatabaseHelper(context);
        dbHelper.setForcedUpgradeVersion(DatabaseHelper.DATABASE_VERSION);
        SQLiteDatabase db = dbHelper.getWritableDatabase();
        db.setVersion(-1);
        db.close();
        db = dbHelper.getWritableDatabase();
    }

	public ViewPager getViewPager() {
		return mViewPager;
	}

	public void setViewPager(ViewPager mViewPager) {
		this.mViewPager = mViewPager;
	}

	@Override
	public void onBackStackChanged() {
		// TODO Auto-generated method stub

	}

	/**
	 * 
	 * @param view
	 */
	public void onMoveByLevelClick(View view) {
		pokemonDisplayFragment.updateMoveList(Constants.MOVE_LEARN_TYPE_LEVEL_UP);
	}
	
	/**
	 * 
	 * @param view
	 */
	public void onMoveByMachineClick(View view) {
		pokemonDisplayFragment.updateMoveList(Constants.MOVE_LEARN_TYPE_MACHINE);
	}

	/**
	 * 
	 * @param view
	 */
	public void onMoveByEggClick(View view) {
		pokemonDisplayFragment.updateMoveList(Constants.MOVE_LEARN_TYPE_EGG_MOVE);
	}
	
	/**
	 * 
	 * @param view
	 */
	public void onMoveByTutorClick(View view) {
		pokemonDisplayFragment.updateMoveList(Constants.MOVE_LEARN_TYPE_TUTOR);
	}
}

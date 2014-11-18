package com.darkdesign.pokemonmachine;

import java.util.Locale;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v13.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import com.darkdesign.pokemonmachine.cache.Cache;
import com.darkdesign.pokemonmachine.database.DatabaseHelper;
import com.darkdesign.pokemonmachine.element.Pokemon;
import com.darkdesign.pokemonmachine.fragment.CollectionDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.ItemDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.MoveDisplayFragment;
import com.darkdesign.pokemonmachine.fragment.PokemonDisplayFragment;


public class PokemonMachineActivity extends Activity implements ActionBar.TabListener {
	
	private static String TAG = PokemonMachineActivity.class.getName();
	
	public static final int FRAGMENT_POSITION_ITEMS = 0; 

    /**
     * The {@link android.support.v4.view.PagerAdapter} that will provide
     * fragments for each of the sections. We use a
     * {@link FragmentPagerAdapter} derivative, which will keep every
     * loaded fragment in memory. If this becomes too memory intensive, it
     * may be best to switch to a
     * {@link android.support.v13.app.FragmentStatePagerAdapter}.
     */
    SectionsPagerAdapter mSectionsPagerAdapter;

    /**
     * The {@link ViewPager} that will host the section contents.
     */
    private ViewPager mViewPager;

    public static DatabaseHelper db;
    public static Cache cache;
    
    public Pokemon currentSelectedPokemon;
    
    private PokemonDisplayFragment pokemonDisplayFragment = null;
    private CollectionDisplayFragment collectionDisplayFragment = null;
    public static ItemDisplayFragment itemDisplayFragment = null;
    private MoveDisplayFragment moveDisplayFragment = null;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pokemonmachine);
        
        // TODO Remove this after DEBUG/TESTING
        //forceDatabaseReload(this);
        
        // Create and Initialise Database Connection
        db = new DatabaseHelper(this);
        
        // Create and Initialise Cache 
        cache = new Cache(this);

        // Set up the action bar.
        final ActionBar actionBar = getActionBar();
        actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);

        // Create the adapter that will return a fragment for each of the three
        // primary sections of the activity.
        mSectionsPagerAdapter = new SectionsPagerAdapter(getFragmentManager());

        // Set up the ViewPager with the sections adapter.
        mViewPager = (ViewPager) findViewById(R.id.pager);
        mViewPager.setAdapter(mSectionsPagerAdapter);

        // When swiping between different sections, select the corresponding
        // tab. We can also use ActionBar.Tab#select() to do this if we have
        // a reference to the Tab.
        mViewPager.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() {
            @Override
            public void onPageSelected(int position) {
                actionBar.setSelectedNavigationItem(position);
            }
        });

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
        
        // Set to default Tab
        mViewPager.setCurrentItem(2);

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
            return true;
        }
        return super.onOptionsItemSelected(item);
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
        		if (collectionDisplayFragment == null) {
        			collectionDisplayFragment = new CollectionDisplayFragment();
        		}
        		
        		returnFragment = collectionDisplayFragment;
        	}
        	
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

}

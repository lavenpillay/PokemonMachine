package com.darkdesign.pokemonmachine.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;

import com.darkdesign.pokemonmachine.PokemonMachineActivity;
import com.darkdesign.pokemonmachine.R;
import com.darkdesign.pokemonmachine.element.Encounter;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by darkness on 2015/07/11.
 */
public class EncounterListAdapter extends BaseExpandableListAdapter {

    private Context _context;
    private ArrayList<String> _groupHeadings;
    private ArrayList<Encounter> _listData;
    private HashMap<Integer, Integer> childCountMap;

    public EncounterListAdapter(Context context, ArrayList<Encounter> listData) {
        this._context = context;
        this._listData = listData;
        this._groupHeadings = new ArrayList<String>();
        this.childCountMap = new HashMap<Integer, Integer>();

        // Build Group Headings from Data
        int lastVersionId = -1;
        int childCount = 0;
        int groupIndex = 0;
        for (Encounter item:listData) {
            childCount++;
            if (lastVersionId != item.getVersionId()) {
                lastVersionId = item.getVersionId();
                _groupHeadings.add(PokemonMachineActivity.db.getGameByVersionId(lastVersionId).getName());
                childCountMap.put(groupIndex, childCount);
                childCount = 0;
                groupIndex++;
            }
        }
    }


    @Override
    public int getGroupCount() {
        return this._groupHeadings.size();
    }

    @Override
    public int getChildrenCount(int groupPosition) {
        return childCountMap.get(groupPosition);
    }

    @Override
    public Object getGroup(int groupPosition) {
        return this._groupHeadings.get(groupPosition);
    }

    @Override
    public Object getChild(int groupPosition, int childPosition) {
        return this._listData.get(childPosition);
    }

    @Override
    public long getGroupId(int groupPosition) {
        return groupPosition;
    }

    @Override
    public long getChildId(int groupPosition, int childPosition) {
        return childPosition;
    }

    @Override
    public boolean hasStableIds() {
        return false;
    }

    @Override
    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        String headerTitle = (String) getGroup(groupPosition);

        if (convertView == null) {
            LayoutInflater infalInflater = (LayoutInflater) _context
                    .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = infalInflater.inflate(R.layout.list_group_encounter, null);
        }

        TextView lblListHeader = (TextView) convertView.findViewById(R.id.lblListGroupHeader);
        lblListHeader.setText(headerTitle);

        return convertView;
    }

    @Override
    public View getChildView(int groupPosition, final int childPosition,
                             boolean isLastChild, View convertView, ViewGroup parent) {


        Encounter encounter = (Encounter) getChild(groupPosition, childPosition);
        final String childText = encounter.getLocation().getName();

        if (convertView == null) {
            LayoutInflater infalInflater = (LayoutInflater) this._context
                    .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = infalInflater.inflate(R.layout.list_item_encounter, null);
        }

        TextView txtListChild = (TextView) convertView.findViewById(R.id.txtLocationName);
        txtListChild.setText(childText);

        TextView txtMinLevel = (TextView)convertView.findViewById(R.id.txtMinLevel);
        txtMinLevel.setText(String.valueOf(encounter.getMinLevel()));

        TextView txtMaxLevel = (TextView)convertView.findViewById(R.id.txtMaxLevel);
        txtMaxLevel.setText(String.valueOf(encounter.getMaxLevel()));

        return convertView;
    }

    @Override
    public boolean isChildSelectable(int i, int i1) {
        return false;
    }
}

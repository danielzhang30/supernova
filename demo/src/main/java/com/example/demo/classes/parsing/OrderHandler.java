package com.example.demo.classes.parsing;

import java.util.ArrayList;

public class OrderHandler {
    public OrderHandler() {}

    public ParseWrapper handleOrder(ArrayList<String> list) {
        ArrayList<String> andList = new ArrayList<>();
        ArrayList<String> orList = new ArrayList<>();
        ArrayList<String> notList = new ArrayList<>();

        ParseWrapper wrapper = new ParseWrapper();

        for (int i = 0; i < list.size(); i++) {
            String word = list.get(i);
            if (word.equals("AND")) {
                andList.add(list.get(i+1));
                i++;
            }
            else {
                if (andList.size() > 1) {
                    wrapper.addAndList(andList);
                    andList = new ArrayList<>();
                }
                else if (andList.size() == 1) {
                    orList.add(andList.get(0));
                    andList = new ArrayList<>();
                }

                if (word.equals("OR")) {
                    andList.add(list.get(i+1));
                    i++;
                }
                else if (word.equals("NOT")) {
                    notList.add(list.get(i+1));
                    i++;
                }
                else {
                    andList.add(word);
                }
            }
        }
        if (andList.size() > 1) {
            wrapper.addAndList(andList);
        }
        else if (andList.size() == 1) {
            orList.add(andList.get(0));
        }

        wrapper.setNotList(notList);
        wrapper.setOrList(orList);

        return wrapper;
    }
}

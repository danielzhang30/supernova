package com.example.demo.classes.parsing;

import java.util.ArrayList;

public class ParseWrapper {
    ArrayList<String> orList;
    ArrayList<ArrayList<String>> andList;
    ArrayList<String> notList;

    public ParseWrapper() {
        orList = new ArrayList<>();
        andList = new ArrayList<>();
        notList = new ArrayList<>();
    }

    public ArrayList<String> getOrList() {
        return orList;
    }

    public void setOrList(ArrayList<String> orList) {
        this.orList = orList;
    }

    public ArrayList<ArrayList<String>> getAndList() {
        return andList;
    }

    public void addAndList(ArrayList<String> list) {
        andList.add(list);
    }

    public ArrayList<String> getNotList() {
        return notList;
    }

    public void setNotList(ArrayList<String> notList) {
        this.notList = notList;
    }

    public void print() {
        System.out.println("AND List:");
        System.out.println(andList);
        System.out.println("NOT List:");
        System.out.println(notList);
        System.out.println("OR List:");
        System.out.println(orList);
    }
}

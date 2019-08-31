/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author kevin
 */
public class Times implements Serializable{
    
    private ArrayList<Time> list = new ArrayList<>();

    public Times() {
    }

    public ArrayList<Time> getList() {
        return list;
    }

    public void addTime(Time time) {
        list.add(time);
    }

    public void removeTime(Time time) {
        list.remove(time);
    }

    public Time getTime(String loginID) {
        for (Time time : list) {
            if (time.getloginID().equals(loginID)) {
                return time;
            }
        }
        return null;
    }

    public ArrayList<Time> getMatches(String email) {
        ArrayList<Time> matches = new ArrayList<>();
        for (Time time : list) {
            if (time.getloginID().equals(email)) {
                matches.add(time);
            }
        }
        return matches;
    }

    public void deleteTime(String loginID) {
       Time time= getTime(loginID);
        if (time != null) {
            removeTime(time);
        } else {
            System.out.println("Time Doesn't exist!");
        }
    }
 }

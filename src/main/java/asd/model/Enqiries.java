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
public class Enqiries implements  Serializable {
    private ArrayList<Enqiry> list = new ArrayList<>();
    public Enqiries(){}
           public ArrayList<Enqiry> getList() {
        return list;
    }

    public void addEnqiry(Enqiry enqiry) {
        list.add(enqiry);
    }

    public void removeEnqiry(Enqiry enqiry) {
        list.remove(enqiry);
    }

    public Enqiry getEnqiry(String enqiryID) {
        for (Enqiry enqiry : list) {
            if (enqiry.getEnqiryID().equals(enqiryID)) {
                return enqiry;
            }
        }
        return null;
    }
    
    
    
    
}

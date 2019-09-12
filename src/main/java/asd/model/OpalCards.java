/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.io.Serializable;
import java.util.*;
/**
 *
 * @author Michelle
 */
public class OpalCards implements Serializable {
        private ArrayList<OpalCard> cards = new ArrayList<>();
        
        public OpalCards() {
        }
        
        public ArrayList<OpalCard> getList() {
            return cards;
        }
        
        public void addCard(OpalCard card) {
            cards.add(card);
        }
        
        public void removeCard(OpalCard card) {
            cards.remove(card);
        }
        
        public OpalCard cardDetails(String opalID) {
            for (OpalCard card : cards) {
                if(card.getOpalID().equalsIgnoreCase(opalID)) {
                    return card;
                }
            }
            return null;
        }
}

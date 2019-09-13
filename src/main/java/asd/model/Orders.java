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
 * @author anita
 */
public class Orders implements Serializable {
        private ArrayList<Order> orders = new ArrayList<Order>();
        
        public Orders() {
        }
        
        public ArrayList<Order> getList() {
            return orders;
        }
        
        public void addOrder(Order order) {
            orders.add(order);
        }
        
}

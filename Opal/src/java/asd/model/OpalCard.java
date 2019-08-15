/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.model;

import java.io.Serializable;
/**
 *
 * @author Michelle
 */
public class OpalCard implements Serializable {
    private String opalID;
    private String securityCode;

    public OpalCard() {
    }

    public OpalCard(String opalID, String securityCode) {
        this.opalID = opalID;
        this.securityCode = securityCode;
    }

    public String getOpalID() {
        return opalID;
    }

    public void setOpalID(String opalID) {
        this.opalID = opalID;
    }

    public String getSecurityCode() {
        return securityCode;
    }

    public void setSecurityCode(String securityCode) {
        this.securityCode = securityCode;
    }
    
    
}

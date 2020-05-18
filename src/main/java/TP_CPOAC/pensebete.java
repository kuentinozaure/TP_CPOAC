/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TP_CPOAC;

import javax.ejb.Stateful;
import TP_CPOAC.impl.PenseBeteLocal;

/**
 *
 * @author AdminEtu
 */
@Stateful
public class pensebete implements PenseBeteLocal {

    String contenuPenseBete;
    String datePenseBete;
    
    public pensebete() {
        System.out.println("Demarre");
        this.datePenseBete = "";
        this.contenuPenseBete = "";
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public void enregistrePenseBete(String contenu, String date) {
        this.contenuPenseBete = contenu;
        this.datePenseBete = date;
    }

    @Override
    public String getDate() {
        System.out.println(this.datePenseBete);
        return this.datePenseBete;
    }

    @Override
    public String getContenu() {
        return this.contenuPenseBete;
    }
}

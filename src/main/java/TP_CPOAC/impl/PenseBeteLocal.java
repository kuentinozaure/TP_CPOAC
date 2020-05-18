/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TP_CPOAC.impl;
import javax.ejb.Local;

/**
 *
 * @author AdminEtu
 */
@Local
public interface PenseBeteLocal {
    
    void enregistrePenseBete(String contenu, String date);
    String getDate();
    String getContenu();
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package troyagym;

import consultas.ConsAnalisis;
import consultas.ConsPersona;
import controladores.CtrlAnalisis;
import controladores.CtrlPersonas;
import modelos.Analisis;
import modelos.Persona;
import vistas.VisPersona;

/**
 *
 * @author Administrator
 */
public class TroyaGym {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     
        Persona per = new Persona();
        ConsPersona consPer = new ConsPersona();
        VisPersona visPer = new VisPersona();                       
        CtrlPersonas ctrlPer = new CtrlPersonas(per, consPer, visPer);               
        ctrlPer.iniciar();
        visPer.setVisible(true);
    }
    
}

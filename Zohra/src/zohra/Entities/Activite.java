/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zohra.Entities;

/**
 *
 * @author Nizar
 */
public class Activite {
    private int ACT_ID;
    private String ACT_INTITULE ;
    private String ACT_LIEU ;
    private String ACT_DESCRIPTION ;
    private String ACT_SUP_MULTIMEDIA ;
    private String ACT_DATE_DEB ;
    private String ACT_DATE_FIN ;
    private String ACT_HEURE_DEB ;
    private String ACT_HEURE_FIN ;
     private String ACT_TYPE ;

    public float getPRIX() {
        return PRIX;
    }

    public void setPRIX(float PRIX) {
        this.PRIX = PRIX;
    }
     private float PRIX ;

    public Activite(String ACT_INTITULE, String ACT_LIEU, String ACT_DESCRIPTION, String ACT_TYPE , float PRIX) {
        this.ACT_INTITULE = ACT_INTITULE;
        this.ACT_LIEU = ACT_LIEU;
        this.ACT_DESCRIPTION = ACT_DESCRIPTION;
        this.ACT_TYPE = ACT_TYPE;
        this.PRIX = PRIX;
    }
    
    public Activite(int ACT_ID,String ACT_INTITULE,String ACT_DESCRIPTION) {
       this.ACT_ID= ACT_ID;
        this.ACT_INTITULE = ACT_INTITULE;
        this.ACT_DESCRIPTION = ACT_DESCRIPTION;
       
    }
    

   
    

    public int getACT_ID() {
        return ACT_ID;
    }

    public void setACT_ID(int ACT_ID) {
        this.ACT_ID = ACT_ID;
    }

    public String getACT_INTITULE() {
        return ACT_INTITULE;
    }

    public void setACT_INTITULE(String ACT_INTITULE) {
        this.ACT_INTITULE = ACT_INTITULE;
    }

    public String getACT_LIEU() {
        return ACT_LIEU;
    }

    public void setACT_LIEU(String ACT_LIEU) {
        this.ACT_LIEU = ACT_LIEU;
    }

    public String getACT_DESCRIPTION() {
        return ACT_DESCRIPTION;
    }

    public void setACT_DESCRIPTION(String ACT_DESCRIPTION) {
        this.ACT_DESCRIPTION = ACT_DESCRIPTION;
    }

    public String getACT_SUP_MULTIMEDIA() {
        return ACT_SUP_MULTIMEDIA;
    }

    public void setACT_SUP_MULTIMEDIA(String ACT_SUP_MULTIMEDIA) {
        this.ACT_SUP_MULTIMEDIA = ACT_SUP_MULTIMEDIA;
    }

    public String getACT_DATE_DEB() {
        return ACT_DATE_DEB;
    }

    public void setACT_DATE_DEB(String ACT_DATE_DEB) {
        this.ACT_DATE_DEB = ACT_DATE_DEB;
    }

    public String getACT_DATE_FIN() {
        return ACT_DATE_FIN;
    }

    public void setACT_DATE_FIN(String ACT_DATE_FIN) {
        this.ACT_DATE_FIN = ACT_DATE_FIN;
    }

    public String getACT_HEURE_DEB() {
        return ACT_HEURE_DEB;
    }

    public void setACT_HEURE_DEB(String ACT_HEURE_DEB) {
        this.ACT_HEURE_DEB = ACT_HEURE_DEB;
    }

    public String getACT_HEURE_FIN() {
        return ACT_HEURE_FIN;
    }

    public void setACT_HEURE_FIN(String ACT_HEURE_FIN) {
        this.ACT_HEURE_FIN = ACT_HEURE_FIN;
    }

    public String getACT_TYPE() {
        return ACT_TYPE;
    }

    public void setACT_TYPE(String ACT_TYPE) {
        this.ACT_TYPE = ACT_TYPE;
    }
   

  
    
    
}

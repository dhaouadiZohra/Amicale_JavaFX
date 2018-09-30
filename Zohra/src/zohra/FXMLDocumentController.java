/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zohra;

import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXListView;
import com.jfoenix.controls.JFXTextArea;
import com.jfoenix.controls.JFXTextField;
//import com.lynden.gmapsfx.GoogleMapView;
//import com.lynden.gmapsfx.MapComponentInitializedListener;
//import com.lynden.gmapsfx.javascript.object.GoogleMap;
//import com.lynden.gmapsfx.javascript.object.LatLong;
//import com.lynden.gmapsfx.javascript.object.MapOptions;
//import com.lynden.gmapsfx.javascript.object.MapTypeIdEnum;
//import com.lynden.gmapsfx.javascript.object.Marker;
//import com.lynden.gmapsfx.javascript.object.MarkerOptions;

import com.sun.prism.PhongMaterial.MapType;
import java.io.File;
import java.net.URL;
import static java.rmi.Naming.list;
import static java.util.Collections.list;
import java.util.List;
import java.util.ResourceBundle;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.Tab;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import zohra.Entities.Activite;
import zohra.Service.Activite_Services;

/**
 *
 * @author zhra
 */
public class FXMLDocumentController implements Initializable {

    private Label label;
    
//    GoogleMapView mapView;
//    GoogleMap gmap;
    
    @FXML
    private TableView<?> tableReservation;
    @FXML
    private Button B_ajouter_act;
//    @FXML
//    private JFXTextField tf_chercher_activite;
    @FXML
    private JFXTextField TF_lieu;
    @FXML
    private JFXTextArea TA_description;
    @FXML
    private JFXTextField TF_type;
     @FXML
    private JFXTextField TF_Prix;
     @FXML
     private JFXTextField TF_intitule;
    @FXML
    private JFXTextField TF_titre_modifier;
    @FXML
    private JFXTextField TF_lieu_modifier;
    @FXML
    private JFXTextField TF_Type_modifier;
    @FXML
    private Button Bmodif_act;
    @FXML
    private Label LB_id_modif;
    @FXML
    private Button supprimer;
    @FXML
    private Tab Activite;
    
    
    @FXML
    private Label verifiezForm;
     @FXML
    private Label m;
     @FXML
    private Label m1;
     @FXML
    private Label m2;
     @FXML
    private Label m3;
     @FXML
    private Label m4;
//    @FXML
//    Tab map;
    @FXML
    private JFXTextField TF_description_modifier;
    @FXML
    private JFXTextField TF_PRIX_modifier1;
    @FXML
    private AnchorPane recherche;
    @FXML
    private JFXTextField tf_chercher_activite;
    @FXML
    private Tab map;
//    @FXML
//    private JFXTextField tf_chercher_complaint_list;
//    @FXML
//    private JFXTextField tf_chercher_activite;
//    @FXML
//    private AnchorPane recherche;
//    @FXML
//    private JFXTextField tf_chercher_activite;
//    @FXML
//    private Tab map;
    
    
//    public FXMLDocumentController(){
//        this.mapView = new GoogleMapView();
//        System.out.println("2");
//        this.mapView.addMapInializedListener(this);
//        System.out.println("3");
//        
//    }

    private void handleButtonAction(ActionEvent event) {
        System.out.println("You clicked me!");
        label.setText("Hello World!");
    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        Activite_Services a = new Activite_Services();
        a.chargeTableauDonnees(tableReservation);
        System.out.println("1");
//        map.setContent(this.mapView);
        

    }
    //Recherche
//    @FXML
//    public void chercher_activite(KeyEvent event) {
//        //System.out.println("This is test for search function"); 
//        tableReservation.refresh();
//         Activite_Services cs = new Activite_Services();
//        cs.recherche(tf_chercher_activite.getText(), tableReservation);
//     
//    }
//     @FXML
//    private void load(ActionEvent event) {
//            
//         listview.setExpanded(true);
//     listview.depthProperty().set(1);
//    }
//    @FXML
//    private void chercher_activite_list(KeyEvent event) {
//      
//         list.getItems().clear();
//      Activite_Services cs=new Activite_Services();
//      ObservableList o= FXCollections.observableArrayList(cs.recherche(tf_chercher_activite.getText(), listview));
//      
//     listview.getItems().setAll(o);
//       
//    }

    @FXML
    private void Ajouter_activite(ActionEvent event) {
        //controle saisie only alpha
        Pattern p = Pattern.compile("[a-zA-Z]*");
        Matcher mat = p.matcher(TF_intitule.getText());
        Matcher mat1 = p.matcher(TF_lieu.getText()); //liaison entre les ligne et les champs
        Matcher mat2 = p.matcher(TA_description.getText());
        Matcher mat3 = p.matcher(TF_type.getText());
        //controle saisie only num
        Pattern p2 = Pattern.compile("[0-9]*[.][0-9]*");
         Matcher mat4 = p2.matcher(TF_Prix.getText());
        
        if(TF_intitule.getText().equals("") || TF_lieu.getText().equals("") || TA_description.getText().equals("")
                || TF_type.getText().equals("") || TF_Prix.getText().equals("")){
        verifiezForm.setText("veuillez remplir le formulaire");
        }
        else if (!(mat.find() && mat.group().equals(TF_intitule.getText()))){
                m.setText("ce champ doit etre alphabétique");
        
        }
        else if(!(mat1.find() && mat1.group().equals(TF_lieu.getText()))){
            m.setText("");    
            m1.setText("ce champ doit etre alphabétique");
    } 
        else if(!(mat2.find() && mat2.group().equals(TA_description.getText()))){
            m.setText("");  
            m1.setText("");
            m2.setText("ce champ doit etre alphabétique");
        
        }
        else if(!(mat3.find() && mat3.group().equals(TF_type.getText()))){
               m.setText("");  
            m1.setText("");
             m2.setText("");
        m3.setText("ce champ doit etre alphabétique");
        }
        else if(!(mat4.find() && mat4.group().equals(TF_Prix.getText()))){
                   m.setText("");  
            m1.setText("");
             m2.setText("");
            m3.setText("");
           m4.setText("ce champ doit etre numérique");
        }
            
        
        
        Activite_Services as = new Activite_Services();
        Activite a = new Activite(TF_intitule.getText(), TF_lieu.getText(), TA_description.getText(), TF_type.getText(), Float.parseFloat(TF_Prix.getText()));
        as.Ajout(a);
         rafraichir_table(tableReservation);
         

    }

    @FXML
    private void get_activite(MouseEvent event) {
        String valeur = tableReservation.getSelectionModel().getSelectedItems().get(0).toString();
        String id = valeur.substring(1, valeur.indexOf(","));
        int ID = Integer.parseInt(id);
        System.out.println(ID);
        Activite_Services as = new Activite_Services();
        Activite a = as.getById(ID);
        String ch = ""+a.getPRIX();
        TF_titre_modifier.setText(a.getACT_INTITULE());
        System.out.println("................1............;;");
        TF_description_modifier.setText(a.getACT_DESCRIPTION());
        
        System.out.println("...............2.............;;");
        TF_lieu_modifier.setText(a.getACT_LIEU());
        System.out.println("................3............;;");
        TF_Type_modifier.setText(a.getACT_TYPE());
        System.out.println("..................4..........;;");
        TF_PRIX_modifier1.setText(ch);
        //TF_PRIX_modifier1.setText(String.valueOf(a.getPRIX()));
        System.out.println("..................5..........;;");
        LB_id_modif.setText(id);
        System.out.println("..................6..........;;");

    }

    @FXML
    private void Modifier_activite(ActionEvent event) {
        Activite_Services as = new Activite_Services();
        int ID = Integer.parseInt(LB_id_modif.getText());
        as.Modifier(ID,TF_titre_modifier.getText(), TF_description_modifier.getText(),TF_lieu_modifier.getText(), TF_Type_modifier.getText(), Float.parseFloat(TF_PRIX_modifier1.getText()));
       
         rafraichir_table(tableReservation);
        

    }

    //Recherche
//     @FXML
//    public void chercher_complaint(KeyEvent event) {
//        //System.out.println("This is test for search function"); 
//        tableReservation.refresh();
//         Activite_Services cs = new Activite_Services();
//        cs.recherche(tf_chercher_activite.getText(), tableReservation);
//       // rafraichir_table(tableV_complaint);
//    }
//    
//    public void chercher(KeyEvent event) {
//    }
//
//    @FXML
//    public void chercher_activite(KeyEvent event) {
//        //System.out.println("This is test for search function"); 
//        tableV_complaint.refresh();
//         Activite_Services cs = new Activite_Services();
//        cs.recherche(tf_chercher_complaint.getText(), tableV_complaint);
//       // rafraichir_table(tableV_complaint);
//    }
//    @FXML
//    private void chercher_complaint_list(KeyEvent event) {
//         listview.getItems().clear();
//      Activite_Services cs=new Activite_Services();
//      ObservableList o= FXCollections.observableArrayList(cs.recherche2(tf_chercher_activite_list.getText(), listview));
//      
//     listview.getItems().setAll(o);
//       
//    }
    public void rafraichir_table(TableView table) {
        table.getItems().clear();
        table.getColumns().clear();
        Activite_Services cs = new Activite_Services();

        cs.chargeTableauDonnees(table);

    }

    @FXML
    private void Supprimer_Activite(ActionEvent event) {
        Activite_Services cs = new Activite_Services();
        String valeur = tableReservation.getSelectionModel().getSelectedItems().get(0).toString();
        System.out.println(valeur);
        String id = valeur.substring(1, valeur.indexOf(","));
        int Id = Integer.parseInt(id);
        System.out.println(Id);
        cs.Supprimer(Id);
        rafraichir_table(tableReservation);
    }

    ///Controle saisie
    //lenght
//       public static void setTextLimit(TextField textField, int length) {
//    textField.setOnKeyTyped(event -> {
//        String string = textField.getText();
//
//        if (string.length() > length) {
//            textField.setText(string.substring(0, length));
//            textField.positionCaret(string.length());
//        }
//    });
    //
//    @Override
//    public void mapInitialized() {
//        //Set the initial properties of the map.
//        MapOptions mapOptions = new MapOptions();
//
//        mapOptions.center(new LatLong(47.6097, -122.3331))
//                .mapType(MapTypeIdEnum.ROADMAP)
//                .overviewMapControl(false)
//                .panControl(false)
//                .rotateControl(false)
//                .scaleControl(false)
//                .streetViewControl(false)
//                .zoomControl(false)
//                .zoom(12);
//
//        gmap = mapView.createMap(mapOptions);
//
//        //Add a marker to the map
//        MarkerOptions markerOptions = new MarkerOptions();
//
//        markerOptions.position(new LatLong(47.6, -122.3))
//                .visible(Boolean.TRUE)
//                .title("My Marker");
//
//        Marker marker = new Marker(markerOptions);
//
//        gmap.addMarker(marker);
//
//    }


//    @FXML
//    private void chercher_activite(ActionEvent event) {
//    }
    
    //MAP
}

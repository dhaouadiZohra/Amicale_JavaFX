/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zohra.Service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.util.Callback;
import zohra.DataBase.DataSource;
import zohra.Entities.Activite;
import zohra.InterfaceService.IActivite_Services;


/**
 *
 * @author 
 */
public class Activite_Services implements IActivite_Services {

     private Connection connection;
    private PreparedStatement ps;
     private TableColumn col;
    ObservableList<ObservableList> obs;
    
    private  ResultSet rs;
   public Activite_Services() {
    
        connection = DataSource.getinstance().getConnection();
    }
    @Override
    public void chargeTableauDonnees(TableView table) {
    obs= FXCollections.observableArrayList();
         try{
            
            
            String sqlp = "SELECT ACT_ID ,ACT_INTITULE,ACT_LIEU,ACT_DESCRIPTION,TYPE,PRIX FROM activite";
           rs = connection.createStatement().executeQuery(sqlp);
            // Titres de colonnes
            String[] titres = {                             
                    "ID",
                "INTITULE",
                "LIEU",
                "DESCRIPTION",
                "TYPE",
                    "PRIX"
                
                
                 
                    
                    
                    
 
            };
            // COLONNE DE TABLE AJOUTÉE DYNAMIQUEMENT
            
            for (int i = 0; i < rs.getMetaData().getColumnCount(); i++ ) {
                final int j = i;
                col = new TableColumn(titres[i]);
                col.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<ObservableList, String>, ObservableValue<String>>(){                   
                    @Override
                    public ObservableValue<String> call(TableColumn.CellDataFeatures<ObservableList, String> parametre) {                                                                                             
                        return new SimpleStringProperty((String)parametre.getValue().get(j));                       
                    }                   
                });
                table.getColumns().addAll(col);
                // Attribution de taille aux colonnes
                col.setMinWidth(100);
               // System.out.println("Column ["+i+"] ");
                // Table de données Centre
                col.setCellFactory(new Callback<TableColumn<String,String>,TableCell<String,String>>(){
                    @Override
                    public TableCell<String, String> call(TableColumn<String, String> p) {
                        TableCell cell = new TableCell(){
                            @Override
                            protected void updateItem(Object t, boolean bln) {
                                if(t != null){
                                    super.updateItem(t, bln);
                                //  System.out.println(t);
                                    setText(t.toString());
                                    setAlignment(Pos.CENTER); // Réglage de l'alignement
                                }
                            }
                        };
                      //  col.setCellFactory(TextFieldTableCell.forTableColumn());
                        return cell;
                    }
                });
                
            }
            // chargement à partir de la base de données
            while(rs.next()){
                //preparation de ligne
                ObservableList<String> row = FXCollections.observableArrayList();
                for(int i = 1 ; i <= rs.getMetaData().getColumnCount(); i++){
                    //iteration des colonnes
                    row.add(rs.getString(i));
                }
               // System.out.println("Row [1] added "+row );
                obs.addAll(row);
            }
            //ensuite l'ajout dans la tavle view
            table.setItems(obs);
          }catch(SQLException e){
              System.out.println("Erreur "+e);            
          }
    
    }
    public void Ajout(Activite c ) {
     try {
       //  System.out.println("test"+C.getEmployee_id()+"test"+C.getTitle()+"text"+C.getDescription());
         String req = "INSERT INTO `activite`(`ACT_INTITULE`, `ACT_LIEU`, `ACT_DESCRIPTION`, `PRIX`,`TYPE`) VALUES (?,?,?,?,?)";
         ps = connection.prepareStatement(req);
         ps.setString(1, c.getACT_INTITULE());
         ps.setString(2, c.getACT_LIEU());
         ps.setString(3, c.getACT_DESCRIPTION());
           ps.setFloat(4, c.getPRIX());
          ps.setString(5, c.getACT_TYPE());
        
         ps.executeUpdate();
     } catch (SQLException ex) {
         Logger.getLogger(Activite_Services.class.getName()).log(Level.SEVERE, null, ex);
     }
    }
     public Activite getById(Integer id) {
        String req = "select ACT_INTITULE,ACT_DESCRIPTION from activite where ACT_ID =?";
         Activite c = null;
        try {
            ps = connection.prepareStatement(req);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                c = new Activite(id,rs.getString(1), rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    }
     public void Modifier(int id,String intitule,String description,String lieu,String type,float prix ) {
         Activite c=getById(id);
       
         try {
            String req = "UPDATE activite SET ACT_INTITULE=?,ACT_DESCRIPTION=? ,ACT_LIEU=?,TYPE=?,PRIX=? WHERE ACT_ID="+id+"";
            
            ps = connection.prepareStatement(req);
            ps.setString(1,intitule );
            ps.setString(2, description);
            ps.setString(3, lieu);
            ps.setString(4, type);
            ps.setFloat(5, prix);
           
         
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Activite_Services.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
    
    public void Supprimer(int id) {
 try {
            String req = "DELETE FROM activite WHERE ACT_ID=?";
            
            ps = connection.prepareStatement(req);
            
            
            ps.setInt(1, id);
            
            
            //ps.setInt(2, product.getCreator().getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Activite_Services.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
//       public void recherche(String v, TableView tableProjet) {
//
//       obs= FXCollections.observableArrayList();
//
//        try {
//             String sql = "SELECT * FROM activite WHERE ACT_ID=? OR TYPE=? ORDER BY ACT_ID DESC";
//            
//            rs = connection.createStatement().executeQuery(sql);
//            
//            while(rs.next()){
//                //preparation de ligne
//                ObservableList<String> row = FXCollections.observableArrayList();
//                for(int i = 1 ; i <= rs.getMetaData().getColumnCount(); i++){
//                    //iteration des colonnes
//                    row.add(rs.getString(i));
//                }
//               // System.out.println("Row [1] added "+row );
//               
//                obs.addAll(row);
//     
//            }
//            //ensuite l'ajout dans la table view
//            tableProjet.setItems(obs);
//                             
//          }catch(SQLException e){
//              System.out.println("Erreur "+e);            
//          }
//        
//        
//    }

    
}

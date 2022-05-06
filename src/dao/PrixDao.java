package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import metier.entities.Prix;

public class PrixDao {
  public List < Prix > getPrix() {
    List < Prix > prix = new ArrayList < Prix > ();

    Connection connection = SingletonConnection.getConnection();
    try {
      PreparedStatement ps = connection.prepareStatement("SELECT * FROM tbl_price");
      ResultSet rs = ps.executeQuery();

      while (rs.next()) {
        Prix pri = new Prix();
        pri.setId_prix(rs.getInt("id"));
        pri.setNom_prix(rs.getString("nom"));
        pri.setSymbol_prix(rs.getString("symbol"));
 
        
        prix.add(pri);
       

      }
      ps.close();

    } catch (SQLException e) {
      e.printStackTrace();
    }
    return prix;
  }

}
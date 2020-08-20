/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.View;

/**
 *
 * @author __ntnc__
 */
public class ViewDAO extends DBContext{
 
    public View getViewByID(){
        String sql = "select * from ViewPost where id = 1 ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new View(rs.getString(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ViewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void updateNumberOfView(String numberOfViews){
        String sql = "update ViewPost set numview = ? where id = 1 ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, numberOfViews);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ViewDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

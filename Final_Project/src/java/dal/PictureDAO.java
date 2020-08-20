/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pictures;
import model.UserComment;

/**
 *
 * @author __ntnc__
 */
public class PictureDAO extends DBContext {

    public ArrayList<Pictures> getPicturesByAlbumID(String aid) {
        ArrayList<Pictures> list = new ArrayList<>();

        String sql = "select * from Picture where aid = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, aid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Pictures(rs.getString(1), rs.getString(2),
                        rs.getString(3)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void deletePictutesByID(String id) {
        String sql = "delete from Picture where id = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PictureDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void addPicture(Pictures p) {
        String sql
                = "INSERT INTO [Picture]\n"
                + "           ([id]\n"
                + "           ,[aid]\n"
                + "           ,[link])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n)";

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, p.getId());
            statement.setString(2, p.getAid());
            statement.setString(3, p.getLink());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PictureDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

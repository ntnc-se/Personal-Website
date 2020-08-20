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
import model.Album;
import model.Post;

/**
 *
 * @author __ntnc__
 */
public class AlbumDAO extends DBContext {

    public ArrayList<Album> getAll() {
        ArrayList<Album> list = new ArrayList<>();
        String sql = "select * from Album ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Album(rs.getString(1), rs.getString(2),
                        rs.getString(3)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Album getAlbumByID(String id) {
        String sql = "select * from Album where id = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Album(rs.getString(1), rs.getString(2), rs.getString(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlbumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void addAlbum(Album a) {
        String sql
                = "INSERT INTO [Album]\n"
                + "           ([id]\n"
                + "           ,[content]\n"
                + "           ,[date])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n)";

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, a.getId());
            statement.setString(2, a.getContent());
            statement.setString(3, a.getDateCreated());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AlbumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteAlbumByID(String id) {
        String sql = "delete from Picture where aid = ? delete from Album where id = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, id);
            statement.setString(2, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AlbumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Album> searchAlbumByContent(String content) {
        ArrayList<Album> list = new ArrayList<>();
        String sql = "select * from Album where content like '%' + ? + '%%' ";

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, content);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Album(rs.getString(1), rs.getString(2),
                        rs.getString(3)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

}

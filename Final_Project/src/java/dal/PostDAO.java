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
import model.Post;

/**
 *
 * @author __ntnc__
 */
public class PostDAO extends DBContext {

    public ArrayList<Post> getAll() {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "select * from Posts ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Post(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public boolean isExistedPost(String id) {
        String sql = "select * from Posts where ID = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public Post getPostByID(String id) {
        String sql = "select * from Posts where ID = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertPost(Post p) {
        String sql
                = "INSERT INTO [Posts]\n"
                + "           ([ID]\n"
                + "           ,[Name]\n"
                + "           ,[Description]\n"
                + "           ,[Content]\n"
                + "           ,[Date])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)\n";

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, p.getId());
            statement.setString(2, p.getName());
            statement.setString(3, p.getDescription());
            statement.setString(4, p.getContent());
            statement.setString(5, p.getDate());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deletePostByID(String id) {
        String sql = "delete from Posts where ID = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updatePost(Post p) {
        String sql = "update Posts set Name=?, Description=?, Content=?, Date=?  where ID=?";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, p.getName());
            statement.setString(2, p.getDescription());
            statement.setString(3, p.getContent());
            statement.setString(4, p.getDate());
            statement.setInt(5, p.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Post> getListByPage(ArrayList<Post> list,
            int start, int end) {
        ArrayList<Post> array = new ArrayList<>();
        for (int i = start; i < end; i++) {
            array.add(list.get(i));
        }
        return array;
    }

    public ArrayList<Post> searchPostByContent(String content) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "select * from Posts where Content like '%' + ? + '%%' ";

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, content);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Post(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
}

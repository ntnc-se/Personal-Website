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
import model.UserComment;

/**
 *
 * @author __ntnc__
 */
public class CommentDAO extends DBContext {

    public ArrayList<UserComment> getAll() {
        ArrayList<UserComment> list = new ArrayList<>();
        String sql = "select * from Comment ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new UserComment(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public ArrayList<UserComment> getCommentsByPostID(String pid) {
        ArrayList<UserComment> list = new ArrayList<>();

        String sql = "select * from Comment where pid = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, pid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new UserComment(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void addComment(UserComment uc) {
        String sql
                = "INSERT INTO [Comment]\n"
                + "           ([pid]\n"
                + "           ,[username]\n"
                + "           ,[email]\n"
                + "           ,[phone]\n"
                + "           ,[comment]\n"
                + "           ,[time])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)\n";

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, uc.getP_id());
            statement.setString(2, uc.getUsername());
            statement.setString(3, uc.getEmail());
            statement.setString(4, uc.getPhone());
            statement.setString(5, uc.getComment());
            statement.setString(6, uc.getTime());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteComment(String phone) {
        String sql = "delete from Comment where phone = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, phone);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

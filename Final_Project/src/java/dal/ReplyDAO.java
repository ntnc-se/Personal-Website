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
import model.Reply_Comment;

/**
 *
 * @author __ntnc__
 */
public class ReplyDAO extends DBContext {

    public ArrayList<Reply_Comment> getReplyCommentsByPhoneID(String pid) {
        ArrayList<Reply_Comment> list = new ArrayList<>();

        String sql = "select * from Reply where pid = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, pid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Reply_Comment(rs.getString(1), rs.getString(2),
                        rs.getString(3)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void addReply(Reply_Comment r) {
        String sql
                = "INSERT INTO [Reply]\n"
                + "           ([pid]\n"
                + "           ,[name]\n"
                + "           ,[reply])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n)";

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, r.getPhone_number());
            statement.setString(2, r.getName());
            statement.setString(3, r.getReply_content());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReplyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

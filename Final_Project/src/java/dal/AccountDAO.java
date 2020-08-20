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
import model.Account;

/**
 *
 * @author __ntnc__
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String user, String pass) {
        String sql = "select * from Accounts where Username = ? and Password = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(user, pass);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Account.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean isExistedUsername(String username) {
        String sql = "select * from Accounts where Username = ? ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public void registerAccount(Account a) {
        String sql = "INSERT INTO [Accounts]\n"
                + "           ([Username]\n"
                + "           ,[Password])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?)\n";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, a.getUsername());
            statement.setString(2, a.getPassword());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

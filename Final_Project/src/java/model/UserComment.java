/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author __ntnc__
 */
public class UserComment {

    private String p_id;
    private String username;
    private String email;
    private String phone;
    private String comment;
    private String time;

    public UserComment() {
    }

    public UserComment(String p_id, String username, String email, String phone, String comment, String time) {
        this.p_id = p_id;
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.comment = comment;
        this.time = time;
    }

    public String getP_id() {
        return p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

}

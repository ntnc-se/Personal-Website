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
public class Reply_Comment {

    private String phone_number;
    private String name;
    private String reply_content;

    public Reply_Comment() {
    }

    public Reply_Comment(String phone_number, String name, String reply_content) {
        this.phone_number = phone_number;
        this.name = name;
        this.reply_content = reply_content;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getReply_content() {
        return reply_content;
    }

    public void setReply_content(String reply_content) {
        this.reply_content = reply_content;
    }

}

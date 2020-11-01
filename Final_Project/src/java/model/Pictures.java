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
public class Pictures {

    private String id;
    private String aid;
    private String link;

    public Pictures(String id, String aid) {
    }
    
    public Pictures() {
        this.id = id;
        this.aid = aid;
    }

    public Pictures(String id, String aid, String link) {
        this.id = id;
        this.aid = aid;
        this.link = link;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

}

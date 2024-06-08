/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

public class Feedback {
    private int id;
    private String nickname;
    private String service;
    private String comments;
    private LocalDateTime timestamp;

    public Feedback(int id, String nickname, String service, String comments, LocalDateTime timestamp) {
        this.id = id;
        this.nickname = nickname;
        this.service = service;
        this.comments = comments;
        this.timestamp = timestamp;
    }

    // Construtor vazio para uso no DAO
    public Feedback() {}

    // Getters e setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public LocalDateTime getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(LocalDateTime timestamp) {
        this.timestamp = timestamp;
    }
}

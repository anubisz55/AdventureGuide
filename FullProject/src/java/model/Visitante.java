/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ariad
 */
public class Visitante {
     private long rowId;
   private String nome;
   private String login;
   private String role;
   private String passwordHash;
   
   public static String getCreatStatement(){
       return "CREATE TABLE IF NOT EXISTS users("
       + "login VARCHAR (50) UNIQUE NOT NULL,"
       + "name VARCHAR (200) NOT NULL,"
       + "role VARCHAR (20) NOT NULL,"
       + "password_hash VARCHAR NOT NULL,"
       + ")";
   }

    public Visitante(long rowId, String nome, String login, String role, String passwordHash) {
        this.rowId = rowId;
        this.nome = nome;
        this.login = login;
        this.role = role;
        this.passwordHash = passwordHash;
    }

    public long getRowId() {
        return rowId;
    }

    public void setRowId(long rowId) {
        this.rowId = rowId;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }
}

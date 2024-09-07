/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseConnection {
    public static Connection initializeDatabase() throws SQLException {
        // Caminho para o arquivo de banco de dados SQLite. Certifique-se de que o caminho seja válido no seu sistema.
        String jdbcURL = "jdbc:sqlite:C:\\Users\\ariad\\apache-tomcat-9.0.89\\bin\\feedback.db";  // Substitua pelo caminho do seu arquivo SQLite
        
        // Estabelece a conexão com o banco de dados SQLite
        return DriverManager.getConnection(jdbcURL);
    }
}


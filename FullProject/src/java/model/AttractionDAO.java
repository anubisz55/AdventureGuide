/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AttractionDAO {
    private static final String DB_URL = "jdbc:sqlite:feedback.db";

    static {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            System.err.println("Erro ao carregar o driver SQLite: " + e.getMessage());
        }
    }

    public AttractionDAO() {
        createTable();
    }

    private void createTable() {
        String sql = "CREATE TABLE IF NOT EXISTS attractions ("
                + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                + "name TEXT NOT NULL,"
                + "description TEXT"
                + ")";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             Statement stmt = conn.createStatement()) {
            stmt.execute(sql);
        } catch (SQLException e) {
            System.err.println("Erro ao criar a tabela de atrações: " + e.getMessage());
        }
    }

    public void addAttraction(Attraction attraction) {
        String sql = "INSERT INTO attractions(name, description) VALUES(?, ?)";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, attraction.getName());
            pstmt.setString(2, attraction.getDescription());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao adicionar atração: " + e.getMessage());
        }
    }

    public List<Attraction> getAllAttractions() {
        List<Attraction> attractions = new ArrayList<>();
        String sql = "SELECT id, name, description FROM attractions";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Attraction attraction = new Attraction();
                attraction.setId(rs.getInt("id"));
                attraction.setName(rs.getString("name"));
                attraction.setDescription(rs.getString("description"));
                attractions.add(attraction);
            }
        } catch (SQLException e) {
            System.err.println("Erro ao obter atrações: " + e.getMessage());
        }
        return attractions;
    }

    public void updateAttraction(Attraction attraction) {
        String sql = "UPDATE attractions SET name = ?, description = ? WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, attraction.getName());
            pstmt.setString(2, attraction.getDescription());
            pstmt.setInt(3, attraction.getId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao atualizar atração: " + e.getMessage());
        }
    }

    public void deleteAttraction(int id) {
        String sql = "DELETE FROM attractions WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao deletar atração: " + e.getMessage());
        }
    }
}

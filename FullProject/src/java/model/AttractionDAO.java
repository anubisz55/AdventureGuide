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

    // Atualiza a criação da tabela para incluir image_path e coordinates
    private void createTable() {
        String sql = "CREATE TABLE IF NOT EXISTS attractions ("
                + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                + "name TEXT NOT NULL,"
                + "description TEXT,"
                + "image_path TEXT,"   // Novo campo para armazenar o caminho da imagem
                + "coordinates TEXT"   // Novo campo para armazenar as coordenadas
                + ")";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             Statement stmt = conn.createStatement()) {
            stmt.execute(sql);
        } catch (SQLException e) {
            System.err.println("Erro ao criar a tabela de atrações: " + e.getMessage());
        }
    }

    // Método para adicionar uma nova atração com imagem e coordenadas
    public void addAttraction(Attraction attraction) {
    String sql = "INSERT INTO attractions(name, description, imagePath, coordinates) VALUES(?, ?, ?, ?)";
    try (Connection conn = DriverManager.getConnection(DB_URL);
         PreparedStatement pstmt = conn.prepareStatement(sql)) {
        pstmt.setString(1, attraction.getName());
        pstmt.setString(2, attraction.getDescription());
        pstmt.setString(3, attraction.getImagePath()); // Novo campo imagem
        pstmt.setString(4, attraction.getCoordinates()); // Novo campo coordenadas
        pstmt.executeUpdate();
    } catch (SQLException e) {
        System.err.println("Erro ao adicionar atração: " + e.getMessage());
    }
}


    // Método para obter todas as atrações, incluindo imagem e coordenadas
    public List<Attraction> getAllAttractions() {
    List<Attraction> attractions = new ArrayList<>();
    String sql = "SELECT id, name, description, imagePath, coordinates FROM attractions";
    try (Connection conn = DriverManager.getConnection(DB_URL);
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(sql)) {
        while (rs.next()) {
            Attraction attraction = new Attraction();
            attraction.setId(rs.getInt("id"));
            attraction.setName(rs.getString("name"));
            attraction.setDescription(rs.getString("description"));
            attraction.setImagePath(rs.getString("imagePath")); // Novo campo imagem
            attraction.setCoordinates(rs.getString("coordinates")); // Novo campo coordenadas
            attractions.add(attraction);
        }
    } catch (SQLException e) {
        System.err.println("Erro ao obter atrações: " + e.getMessage());
    }
    return attractions;
}


    // Método para atualizar uma atração com imagem e coordenadas
    public void updateAttraction(Attraction attraction) {
        String sql = "UPDATE attractions SET name = ?, description = ?, image_path = ?, coordinates = ? WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, attraction.getName());
            pstmt.setString(2, attraction.getDescription());
            pstmt.setString(3, attraction.getImagePath());   // Atualiza o caminho da imagem
            pstmt.setString(4, attraction.getCoordinates()); // Atualiza as coordenadas
            pstmt.setInt(5, attraction.getId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao atualizar atração: " + e.getMessage());
        }
    }

    // Método para deletar uma atração
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
    
    
    public Attraction getAttractionById(int id) {
    Attraction attraction = null;
    String sql = "SELECT * FROM attractions WHERE id = ?";

    try (Connection conn = this.connect();
         PreparedStatement pstmt = conn.prepareStatement(sql)) {

        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            int attractionId = rs.getInt("id");
            String name = rs.getString("name");
            String description = rs.getString("description");
            String imagePath = rs.getString("imagePath");
            String coordinates = rs.getString("coordinates");

            // Cria um objeto Attraction com os dados recuperados
            attraction = new Attraction(attractionId, name, description, imagePath, coordinates);
        }
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
    return attraction;
}

    private Connection connect() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}


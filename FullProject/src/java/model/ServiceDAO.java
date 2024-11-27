/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ServiceDAO {
    private static final String DB_URL = "jdbc:sqlite:feedback.db";

    static {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            System.err.println("Erro ao carregar o driver SQLite: " + e.getMessage());
        }
    }

    public ServiceDAO() {
        createTable();
    }

    // Criação da tabela de serviços (services) com imagem e coordenadas
    private void createTable() {
        String sql = "CREATE TABLE IF NOT EXISTS services ("
                + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                + "name TEXT NOT NULL,"
                + "description TEXT,"
                + "image_path TEXT,"
                + "coordinates TEXT"  // Novo campo para armazenar as coordenadas (latitude, longitude)
                + ")";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             Statement stmt = conn.createStatement()) {
            stmt.execute(sql);
        } catch (SQLException e) {
            System.err.println("Erro ao criar a tabela de serviços: " + e.getMessage());
        }
    }

    // Método para adicionar um novo serviço com imagem e coordenadas
    public void addService(Service service) {
        String sql = "INSERT INTO services(name, description, image_path, coordinates) VALUES(?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, new String(service.getName().getBytes(), StandardCharsets.UTF_8));
            pstmt.setString(2, new String(service.getDescription().getBytes(), StandardCharsets.UTF_8));
            pstmt.setString(3, service.getImagePath());  // Novo campo imagem
            pstmt.setString(4, service.getCoordinates());  // Novo campo coordenadas
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao adicionar serviço: " + e.getMessage());
        }
    }

    // Método para obter todos os serviços, incluindo imagem e coordenadas
    public List<Service> getAllServices() {
        List<Service> services = new ArrayList<>();
        String sql = "SELECT id, name, description, image_path, coordinates FROM services";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Service service = new Service();
                service.setId(rs.getInt("id"));
                service.setName(rs.getString("name"));
                service.setDescription(rs.getString("description"));
                service.setImagePath(rs.getString("image_path"));  // Novo campo imagem
                service.setCoordinates(rs.getString("coordinates"));  // Novo campo coordenadas
                services.add(service);
            }
        } catch (SQLException e) {
            System.err.println("Erro ao obter serviços: " + e.getMessage());
        }
        return services;
    }

    // Método para atualizar um serviço com imagem e coordenadas
    public void updateService(Service service) {
        String sql = "UPDATE services SET name = ?, description = ?, image_path = ?, coordinates = ? WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, new String(service.getName().getBytes(), StandardCharsets.UTF_8));
            pstmt.setString(2, new String(service.getDescription().getBytes(), StandardCharsets.UTF_8));
            pstmt.setString(3, service.getImagePath());  // Atualiza o caminho da imagem
            pstmt.setString(4, service.getCoordinates());  // Atualiza as coordenadas
            pstmt.setInt(5, service.getId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao atualizar serviço: " + e.getMessage());
        }
    }

    // Método para deletar um serviço
    public void deleteService(int id) {
        String sql = "DELETE FROM services WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao deletar serviço: " + e.getMessage());
        }
    }

    // Método para obter um serviço específico por ID
    public Service getServiceById(int id) {
        Service service = null;
        String sql = "SELECT * FROM services WHERE id = ?";

        try (Connection conn = this.connect();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                int serviceId = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String imagePath = rs.getString("image_path");
                String coordinates = rs.getString("coordinates");

                // Cria um objeto Service com os dados recuperados
                service = new Service(serviceId, name, description, imagePath, coordinates);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return service;
    }

    private Connection connect() throws SQLException {
        return DriverManager.getConnection(DB_URL);
    }
}


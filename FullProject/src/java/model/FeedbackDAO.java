/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAO {

    private static final String DB_URL = "jdbc:sqlite:feedback.db";

    static {
        try {
            // Carrega o driver JDBC do SQLite
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            System.err.println("Erro ao carregar o driver SQLite: " + e.getMessage());
        }
    }

    public FeedbackDAO() {
        createDatabaseAndTable();
    }

    private void createDatabaseAndTable() {
        String sql = "CREATE TABLE IF NOT EXISTS feedbacks ("
                + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                + "nickname TEXT NOT NULL,"
                + "service TEXT NOT NULL,"
                + "comments TEXT NOT NULL,"
                + "timestamp DATETIME DEFAULT CURRENT_TIMESTAMP"
                + ")";
        try (Connection conn = DriverManager.getConnection(DB_URL)) {
            if (conn != null) {
                try (Statement stmt = conn.createStatement()) {
                    stmt.execute(sql);
                }
            }
        } catch (SQLException e) {
            System.err.println("Erro ao criar a tabela de feedbacks: " + e.getMessage());
        }
    }

    public void addFeedback(String nickname, String service, String comments) {
        String sql = "INSERT INTO feedbacks(nickname, service, comments) VALUES(?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, nickname);
            pstmt.setString(2, service);
            pstmt.setString(3, comments);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Erro ao adicionar feedback: " + e.getMessage());
        }
    }

    public List<Feedback> getFeedbacks() {
        List<Feedback> feedbacks = new ArrayList<>();
        String sql = "SELECT nickname, comments, timestamp FROM feedbacks";
        try (Connection conn = DriverManager.getConnection(DB_URL);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Feedback feedback = new Feedback();
                feedback.setNickname(rs.getString("nickname"));
                feedback.setComments(rs.getString("comments"));
                feedback.setTimestamp(rs.getTimestamp("timestamp").toLocalDateTime());
                feedbacks.add(feedback);
            }
        } catch (SQLException e) {
            System.err.println("Erro ao obter feedbacks: " + e.getMessage());
        }
        return feedbacks;
    }
}

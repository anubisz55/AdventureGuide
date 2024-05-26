/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAO {
    public static final String CLASS_NAME = "org.sqliteJDBC";
    private String url = "jdbc:sqlite:feedback.db";

    public FeedbackDAO() {
        try (Connection conn = DriverManager.getConnection(url)) {
            if (conn != null) {
                System.out.println("Connected to the database");
                createTable();
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    private void createTable() {
        String sql = "CREATE TABLE IF NOT EXISTS feedback ("
                   + "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                   + "nickname TEXT NOT NULL, "
                   + "service TEXT NOT NULL, "
                   + "comments TEXT NOT NULL, "
                   + "timestamp DATETIME DEFAULT CURRENT_TIMESTAMP"
                   + ");";

        try (Connection conn = DriverManager.getConnection(url);
             Statement stmt = conn.createStatement()) {
            stmt.execute(sql);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void addFeedback(String nickname, String service, String comments) {
        String sql = "INSERT INTO feedback(nickname, service, comments) VALUES(?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(url);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, nickname);
            pstmt.setString(2, service);
            pstmt.setString(3, comments);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public List<Feedback> getFeedbacks() {
        List<Feedback> feedbacks = new ArrayList<>();
        String sql = "SELECT id, nickname, service, comments, timestamp FROM feedback";

        try (Connection conn = DriverManager.getConnection(url);
             PreparedStatement pstmt  = conn.prepareStatement(sql);
             ResultSet rs  = pstmt.executeQuery()) {

            while (rs.next()) {
                Feedback feedback = new Feedback(
                        rs.getInt("id"),
                        rs.getString("nickname"),
                        rs.getString("service"),
                        rs.getString("comments"),
                        rs.getString("timestamp")
                );
                feedbacks.add(feedback);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return feedbacks;
    }
}


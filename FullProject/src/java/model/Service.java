/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Service {
    private int id;
    private String name;
    private String description;
    private String imagePath;
    private String coordinates;  // Coordenadas no formato "latitude,longitude"

    // Construtores, getters e setters
    public Service() {}

    public Service(int id, String name, String description, String imagePath, String coordinates) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.imagePath = imagePath;
        this.coordinates = coordinates;
    }

    // Getters e Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getCoordinates() {
        return coordinates;
    }

    public void setCoordinates(String coordinates) {
        this.coordinates = coordinates;
    }
}

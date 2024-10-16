package com.example.stockticker.model;

public class Stock {
    private String id;
    private String name;
    private String symbol;
    private double price;
    private int volume;

    public Stock() {
    }

    public Stock(String id, String name, String symbol, double price, int volume) {
        this.id = id;
        this.name = name;
        this.symbol = symbol;
        this.price = price;
        this.volume = volume;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }
}

// Explain the contents of this file. What is the purpose of this class?


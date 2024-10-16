package com.example.stockticker.service;

import com.example.stockticker.model.Stock;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Service
public class StockService {

    private static final String STOCKS_JSON_PATH = "src/main/resources/stocks.json";

    public List<Stock> getAllStocks() {
        List<Stock> stocks = new ArrayList<>();

        try {
            String json = new String(Files.readAllBytes(Paths.get(STOCKS_JSON_PATH)));
            ObjectMapper objectMapper = new ObjectMapper();
            stocks = objectMapper.readValue(json, new TypeReference<List<Stock>>() {});
        } catch (IOException e) {
            e.printStackTrace();
        }

        return stocks;
    }
}
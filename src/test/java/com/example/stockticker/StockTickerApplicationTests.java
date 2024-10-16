package com.example.stockticker;

import com.example.stockticker.model.Stock;
import com.example.stockticker.service.StockService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Arrays;
import java.util.List;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@SpringBootTest
@AutoConfigureMockMvc
class StockTickerApplicationTests {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private StockService stockService;

    private List<Stock> stockList;

    @BeforeEach
    void setUp() {
        stockList = Arrays.asList(
                new Stock("1", "Apple Inc.", "AAPL", 150.25, 1000000),
                new Stock("2", "Microsoft Corp.", "MSFT", 250.75, 2000000)
        );
    }

    @Test
    void contextLoads() {
    }

    @Test
    void getAllStocks() throws Exception {
        when(stockService.getAllStocks()).thenReturn(stockList);

        mockMvc.perform(get("/stocks"))
                .andExpect(status().isOk())
                .andExpect(content().contentType("application/json"))
                .andExpect(jsonPath("$[0].id").value("1"))
                .andExpect(jsonPath("$[0].name").value("Apple Inc."))
                .andExpect(jsonPath("$[0].symbol").value("AAPL"))
                .andExpect(jsonPath("$[0].price").value(150.25))
                .andExpect(jsonPath("$[0].volume").value(1000000))
                .andExpect(jsonPath("$[1].id").value("2"))
                .andExpect(jsonPath("$[1].name").value("Microsoft Corp."))
                .andExpect(jsonPath("$[1].symbol").value("MSFT"))
                .andExpect(jsonPath("$[1].price").value(250.75))
                .andExpect(jsonPath("$[1].volume").value(2000000));
    }
}
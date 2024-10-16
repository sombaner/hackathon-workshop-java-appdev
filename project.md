# Stock Ticker App

This is a sample stock ticker application built with Java Spring Boot.

## Project Structure

```
vscode-java-api
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── example
│   │   │           └── stockticker
│   │   │               ├── StockTickerApplication.java
│   │   │               ├── controller
│   │   │               │   └── StockController.java
│   │   │               ├── model
│   │   │               │   └── Stock.java
│   │   │               └── service
│   │   │                   └── StockService.java
│   │   └── resources
│   │       ├── application.properties
│   │       └── stocks.json
│   └── test
│       └── java
│           └── com
│               └── example
│                   └── stockticker
│                       └── StockTickerApplicationTests.java
├── mvnw
├── mvnw.cmd
├── pom.xml
└── README.md
```

## Files

- `src/main/java/com/example/stockticker/StockTickerApplication.java`: This file is the entry point of the Spring Boot application. It contains the main method to start the application.

- `src/main/java/com/example/stockticker/controller/StockController.java`: This file exports a class `StockController` which handles the REST API endpoints. It contains a method `getAllStocks` that handles the GET request to retrieve all stocks.

- `src/main/java/com/example/stockticker/model/Stock.java`: This file exports a class `Stock` which represents the stock entity. It contains properties such as `id`, `name`, `symbol`, and `price`.

- `src/main/java/com/example/stockticker/service/StockService.java`: This file exports a class `StockService` which provides the business logic for handling stocks. It contains a method `getAllStocks` that retrieves all stocks from the local JSON file.

- `src/main/resources/application.properties`: This file contains the configuration properties for the Spring Boot application.

- `src/main/resources/stocks.json`: This file is a local JSON file that contains the sample stocks data. It can be used for CRUD operations.

- `src/test/java/com/example/stockticker/StockTickerApplicationTests.java`: This file contains the test cases for the Spring Boot application.

- `mvnw` and `mvnw.cmd`: These files are Maven wrapper scripts that allow you to run Maven commands without having to install Maven separately.

- `pom.xml`: This file is the Maven project object model (POM) file. It contains the project configuration, dependencies, and build settings.

- `README.md`: This file contains the documentation for the project.

## Usage

To run the application, you can use the following command:

```
./mvnw spring-boot:run
```

Make sure you have Java and Maven installed on your system.

---

> Please note that this is a template and you may need to modify it according to your specific requirements.
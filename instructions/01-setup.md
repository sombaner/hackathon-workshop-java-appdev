### Fetch the source code
To run this application locally, follow these steps:

1. Clone / Download the repository: 
    ```bash
    git clone https://github.com/sombaner/hackathon-workshop-java-appdev.git

    git checkout -b <your_name>
    ```
2. Navigate to the project directory: 
    ```bash
    cd vscode-java-api
    ```
---
### Run the api base template

Run the codes from the initial template to make sure the java setup is successful on your machine.

1. If your laptop is not already setup to use `java`, Refer to the below guide for more details
    - Installing on MacOS
        - Download the [JDK 23 mac binary](https://www.oracle.com/java/technologies/downloads/#jdk23-mac)
        - After installation, check the installation from your terminal using the following command
            ```bash
            java -version
            ```
    - For more details / on other OS, refer to the [official documentation](https://docs.oracle.com/en/java/javase/23/install/overview-jdk-installation.html) here
2. Install `maven` on MacOS
    ```bash
    brew install maven
    brew tap spring-io/tap
    brew install spring-boot
    ```
3. Run the java application
    ```bash
    <!-- mvn spring-boot:start -->

    mvn spring-boot:run
    ```
3. Let's do a quick test to check that the API is running.
    ```bash
    <!-- MAC, Linux -->
    curl -X GET 'http://localhost:8081/stocks'

    <!-- Windows -->
    Invoke-WebRequest -Uri "http://localhost:8081/stocks" -Method Get
    (or)
    Invoke-RestMethod -Uri "http://localhost:8081/stocks" -Method Get
    ```
    _**Note**: Alternatively, you can open the URL [http://localhost:8081/stocks](http://localhost:8081/stocks) in the browser to verify the data is retrieved successfully._
---

> NEXT [> Proceed to Workshop Exercises](./02-workshop-exercises.md)

> PREVIOUS [< Go back to main instructions](../Readme.md)

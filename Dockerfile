FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["java","-jar","target/log-query-service-0.0.1-SNAPSHOT.jar"]

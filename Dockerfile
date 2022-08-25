FROM adoptopenjdk/openjdk15:jdk-15.0.2_7-alpine
WORKDIR /app-ms
COPY ./target/employee-system-api-0.0.1-SNAPSHOT.jar employee-ms-0.0.1-SNAPSHOT.jar
COPY H2DB.mv.db H2DB.mv.db
EXPOSE 8080
ENTRYPOINT ["java","-jar","employee-ms-0.0.1-SNAPSHOT.jar"]

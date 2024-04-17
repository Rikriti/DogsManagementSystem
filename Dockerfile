FROM maven:3.9.6-jdk-22 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM openjdk:22-jdk-slim
COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]

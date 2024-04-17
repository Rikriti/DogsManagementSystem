FROM maven:3.6.3-jdk-8 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM  openjdk11:jdk-11.0.11_9-slim
COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]

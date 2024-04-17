FROM maven:3.8.2-jdk-22 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM openjdk22:alpine-jre
COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]

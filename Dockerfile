FROM maven:3.8.2-openjdk-22 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM adoptopenjdk/openjdk22:alpine-jre
COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]
